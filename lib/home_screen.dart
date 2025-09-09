import 'dart:html' as html;
import 'dart:io' show File;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vedprakashportfolio/social_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _handleResumeDownload(BuildContext context) async {
    const assetPath = 'assets/Resume.pdf';
    try {
      if (kIsWeb) {
        final byteData = await rootBundle.load(assetPath);
        final buffer = byteData.buffer.asUint8List();
        final blob = html.Blob([buffer]);
        final url = html.Url.createObjectUrlFromBlob(blob);
        final anchor =
            html.AnchorElement(href: url)
              ..download = 'Ved_Prakash_Resume.pdf'
              ..target = 'blank'
              ..click();
        html.Url.revokeObjectUrl(url);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("📄 Resume download started!"),
            backgroundColor: Colors.deepPurple,
          ),
        );
      } else {
        final byteData = await rootBundle.load(assetPath);
        final buffer = byteData.buffer.asUint8List();
        final dir = await getTemporaryDirectory();
        final file = await File(
          '${dir.path}/Ved_Prakash_Resume.pdf',
        ).writeAsBytes(buffer);
        await OpenFile.open(file.path);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("📄 Resume downloaded successfully! 😊"),
            backgroundColor: Colors.deepPurple,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("❌ Failed to download resume: $e"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple.shade50, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 700;
              return isMobile
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: _buildContent(isMobile, context),
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _buildContent(isMobile, context),
                        ),
                      ),
                      const SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/vedx.png',
                          height: 360,
                          width: 260,
                          fit: BoxFit.cover,
                        ),
                      ).animate().scale(duration: 800.ms),
                    ],
                  );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildContent(bool isMobile, BuildContext context) {
    final content = [
      Text(
        "Hi, I'm 👋",
        style: TextStyle(
          fontSize: isMobile ? 20 : 22,
          color: Colors.grey.shade700,
        ),
        textAlign: isMobile ? TextAlign.center : TextAlign.start,
      ).animate().fadeIn(duration: 500.ms, delay: 100.ms),
      const SizedBox(height: 6),
      ShaderMask(
        shaderCallback:
            (bounds) => const LinearGradient(
              colors: [Colors.deepPurple, Colors.pink],
            ).createShader(bounds),
        child: Text(
          "VED PRAKASH",
          style: GoogleFonts.poppins(
            fontSize: isMobile ? 30 : 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
      ).animate().slideX(begin: -1, duration: 600.ms),
      const SizedBox(height: 10),
      Text(
        "Passionate Flutter Developer 🚀",
        style: GoogleFonts.poppins(
          fontSize: isMobile ? 16 : 20,
          fontWeight: FontWeight.w600,
          color: Colors.deepPurple,
        ),
        textAlign: isMobile ? TextAlign.center : TextAlign.start,
      ).animate().fadeIn(duration: 400.ms, delay: 200.ms),
      const SizedBox(height: 8),
      Text(
        "Crafting mobile experiences with Flutter, one pixel at a time.",
        style: GoogleFonts.openSans(
          fontSize: isMobile ? 9 : 14,
          color: Colors.grey.shade700,
          fontStyle: FontStyle.italic,
        ),
        textAlign: isMobile ? TextAlign.center : TextAlign.start,
      ),
      const SizedBox(height: 20),
      Wrap(
        spacing: 12,
        alignment: WrapAlignment.center,
        children: const [
          SocialIcon(
            iconPath: 'assets/icons8linkedin.png',
            url: 'https://www.linkedin.com/in/vedprakash27072000',
          ),
          SocialIcon(
            iconPath: 'assets/icons8-github.png',
            url: 'https://github.com/VEDPRAKASHABPS',
          ),

          SocialIcon(
            iconPath: 'assets/icons8-twitter-64.png',
            url: 'https://twitter.com/vedprak43821488',
          ),
          SocialIcon(
            iconPath: 'assets/icons8w.png',
            url: 'https://wa.me/919472795244?text=Hi%20Ved%20Prakash',
          ),
        ],
      ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
      const SizedBox(height: 30),
      Wrap(
        spacing: 20,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.pink],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton(
              onPressed: () => _handleResumeDownload(context),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
              ),
              child: Text(
                "Download Resume",
                style: TextStyle(
                  fontSize: isMobile ? 14 : 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.pink],
              ),
            ),
            child: OutlinedButton(
              onPressed: () async {
                final phoneNumber = 'tel:9472795244';
                if (await canLaunchUrl(Uri.parse(phoneNumber))) {
                  await launchUrl(Uri.parse(phoneNumber));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("❌ Could not launch phone dialer"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                side: const BorderSide(color: Colors.transparent),
              ),
              child: Text(
                "📞  Call Me",
                style: TextStyle(
                  fontSize: isMobile ? 14 : 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ).animate().slideY(begin: 0.5, delay: 400.ms),
    ];
    if (isMobile) {
      content.insertAll(0, [
        Center(
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, // ya koi aur color
                width: 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.asset(
                'assets/vedxcopy.png',
                width: 100,
                height: 100,
              ),
            ),
          ).animate().scale(duration: 800.ms),
        ),
        const SizedBox(height: 30),
      ]);
    }

    return content;
  }
}
