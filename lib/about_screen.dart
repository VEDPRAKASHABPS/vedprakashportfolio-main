import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 30 : 50,
        horizontal: isMobile ? 16 : 60,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightBlue.shade100, Colors.purple.shade200],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ShaderMask(
                shaderCallback:
                    (bounds) => const LinearGradient(
                      colors: [Colors.deepPurple, Colors.pink],
                    ).createShader(bounds),
                child: Text(
                  "📖 About Me",
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 22 : 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Uncomment and replace with your actual image if needed
              // CircleAvatar(
              //   radius: isMobile ? 70 : 90,
              //   backgroundImage: const AssetImage('assets/vedimg.png'),
              //   backgroundColor: Colors.transparent,
              // ),
              const SizedBox(height: 20),

              Text(
                "🚀 Passionate Flutter Developer with strong skills in building robust, elegant mobile apps.\n\n"
                "👨‍💻 Skilled in Flutter, Firebase, REST APIs, and writing clean, maintainable code.\n\n"
                "🎨 Focused on crafting intuitive UI/UX that enhances user experience across platforms.\n\n"
                "📈 Continuously learning, adapting to new challenges, and delivering impactful solutions.\n\n"
                "🤝 Available for internships, freelance opportunities, and exciting collaborations!",
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 12 : 16,
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 20),
              Divider(
                color: Colors.white70,
                thickness: 1,
                indent: isMobile ? 30 : 80,
                endIndent: isMobile ? 30 : 80,
              ),
              const SizedBox(height: 20),

              isMobile
                  ? InfoColumn(isMobile: isMobile)
                  : InfoRow(isMobile: isMobile),

              const SizedBox(height: 20),
              Text(
                "Feel free to reach out. Let's build something amazing together!",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 12 : 16,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),
              const AnimatedContactButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final bool isMobile;
  const InfoRow({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InfoTile(
            title: "🎓 Education",
            subtitle: "B.Tech - IT\nGovernment Engineering College Azamgarh",
            icon: Icons.school,
            isMobile: isMobile,
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: InfoTile(
            title: "💼 Experience",
            subtitle: "Flutter Developer\nRicoz, HBPAT, Vigorous, Nadifit",
            icon: Icons.work_outline,
            isMobile: isMobile,
          ),
        ),
      ],
    );
  }
}

class InfoColumn extends StatelessWidget {
  final bool isMobile;
  const InfoColumn({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoTile(
          title: "🎓 Education",
          subtitle: "B.Tech - IT\nGovernment Engineering College Azamgarh",
          icon: Icons.school,
          isMobile: isMobile,
        ),
        const SizedBox(height: 20),
        InfoTile(
          title: "💼 Experience",
          subtitle:
              "Flutter Developer\n          Ricoz, HBPAT, Vigorous, Nadifit           ",
          icon: Icons.work_outline,
          isMobile: isMobile,
        ),
      ],
    );
  }
}

class InfoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isMobile;

  const InfoTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.deepPurple, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Icon(icon, size: 30, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 12 : 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: isMobile ? 12 : 15,
                color: Colors.white70,
                height: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedContactButton extends StatefulWidget {
  const AnimatedContactButton({super.key});

  @override
  _AnimatedContactButtonState createState() => _AnimatedContactButtonState();
}

class _AnimatedContactButtonState extends State<AnimatedContactButton> {
  double _scale = 1.0;

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'vedprakashabps@gmail.com',
      query: Uri.encodeFull('subject=Let\'s Work Together&body=Hi Ved,'),
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open email client')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _scale = 0.95),
      onTapUp: (_) => setState(() => _scale = 1.0),
      onTap: _launchEmail,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 150),
        child: ElevatedButton.icon(
          icon: const Icon(Icons.mail_outline, size: 20),
          label: const Text("Send Mail"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 250, 250, 251),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(fontSize: 14),
          ),
          onPressed: _launchEmail,
        ),
      ),
    );
  }
}
