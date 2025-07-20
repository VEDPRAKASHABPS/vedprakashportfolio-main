// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:timeline_tile/timeline_tile.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MyStoryScreen extends StatelessWidget {
//   const MyStoryScreen({super.key});

//   final List<Map<String, String>> jobs = const [
//     {
//       'company': 'Ricoz',
//       'role': 'Flutter Developer ',
//       'duration': 'Aug 2023 – May 2024',
//       'contact': 'Rajesh Kumar (7050062084)',
//       'work':
//           'Developed scalable Flutter apps, integrated Firebase (Auth, Firestore, Remote Config), REST API integration, UI from Figma designs.\n\n⚡ Worked on Glamgo App (Salon Service Application).',
//       'link': 'https://ricoz.in/',
//       'applink': 'https://www.glamgo.in/',
//     },
//     {
//       'company': 'HBPAT (OPC) Pvt. Ltd.',
//       'role': 'Flutter Developer ',
//       'duration': 'Feb 2024 – May 2024',
//       'contact': 'Sujit Maske (7709617074)',
//       'work':
//           'Built responsive Flutter mobile apps, collaborated with teams, implemented clean coding practices, integrated RESTful APIs and Firebase features.',
//       'link':
//           'https://www.thecompanycheck.com/company/hbpat-opc-private-limited/U74994MH2022OPC376670',
//       'applink': 'https://github.com/VEDPRAKASHABPS/grocery.git',
//     },
//     {
//       'company': 'Vigorus Healthtech Private Limited (Chikitsa)',
//       'role': 'Flutter Developer ',
//       'duration': 'Jun 2024 – Jan 2025',
//       'contact': 'Chirag Goyal (8306042333)',
//       'work':
//           'Contributed to UI redesign and feature delivery in healthcare mobile apps, enhanced patient engagement through clean Flutter development.\n\n⚡ Revamped old Chikitsa App UI/UX and integrated APIs for new functionalities.',
//       'link': 'https://g.co/kgs/aNsT6D3',
//       'applink': 'https://www.chikitsa.io/',
//     },
//     {
//       'company': 'Nadifit',
//       'role': 'Flutter Developer',
//       'duration': 'Jan 2025 – Present',
//       'contact': 'Manjunath Y C (6360548906)',
//       'work':
//           'Developed mobile app UI from Figma, integrated Firebase Authentication, Firestore, and implemented API-based features for fitness tracking.\n\n⚡ Built new Nadifit Fitness App (Live on Play Store).',
//       'link': 'https://nadifithub.com/',
//       'applink':
//           'https://play.google.com/store/apps/details?id=com.neubotz.nadifit',
//     },
//   ];

//   Future<void> _launchURL(String url) async {
//     if (!await launchUrl(
//       Uri.parse(url),
//       mode: LaunchMode.externalApplication,
//     )) {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isMobile = size.width < 600;
//     final isTablet = size.width >= 600 && size.width < 1024;
//     double baseFontSize =
//         isMobile
//             ? 12
//             : isTablet
//             ? 16
//             : 16;

//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.lightBlue.shade100, Colors.purple.shade200],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: ListView(
//           padding: EdgeInsets.symmetric(vertical: isMobile ? 20 : 30),
//           children: [
//             Center(
//               child: Padding(
//                 padding: EdgeInsets.only(top: isMobile ? 30 : 60, bottom: 20),
//                 child: Column(
//                   children: [
//                     ShaderMask(
//                       shaderCallback:
//                           (bounds) => const LinearGradient(
//                             colors: [Colors.deepPurple, Colors.pink],
//                           ).createShader(bounds),
//                       child: Text(
//                         "🧑‍💻 My Job Journey",
//                         style: GoogleFonts.poppins(
//                           fontSize: isMobile ? 20 : 30,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       "My growth path — learning, building, and delivering impactful projects!",
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.openSans(
//                         fontSize: isMobile ? 12 : 16,
//                         height: 1.7,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.italic,
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             ...List.generate(jobs.length, (index) {
//               final job = jobs[index];

//               return TweenAnimationBuilder(
//                 duration: Duration(milliseconds: 500 + index * 200),
//                 tween: Tween<Offset>(
//                   begin: const Offset(1, 0),
//                   end: Offset.zero,
//                 ),
//                 builder: (context, Offset offset, child) {
//                   return Transform.translate(offset: offset * 50, child: child);
//                 },
//                 child: TimelineTile(
//                   alignment: TimelineAlign.manual,
//                   lineXY: isMobile ? 0.01 : 0.1,
//                   isFirst: index == 0,
//                   isLast: index == jobs.length - 1,
//                   indicatorStyle: IndicatorStyle(
//                     width: 24,
//                     color: Colors.deepPurple,
//                     iconStyle: IconStyle(
//                       iconData: Icons.work,
//                       color: Colors.white,
//                     ),
//                   ),
//                   beforeLineStyle: const LineStyle(
//                     color: Colors.deepPurple,
//                     thickness: 2,
//                   ),
//                   endChild: Container(
//                     height: isMobile ? 300 : 280,
//                     margin: EdgeInsets.all(12),
//                     padding: EdgeInsets.all(isMobile ? 14 : 18),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.95),
//                       borderRadius: BorderRadius.circular(14),

//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.deepPurple.withOpacity(0.1),
//                           blurRadius: 8,
//                           offset: const Offset(2, 4),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 job['company']!,
//                                 style: GoogleFonts.poppins(
//                                   fontSize: isMobile ? 16 : 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.deepPurple,
//                                 ),
//                                 overflow: TextOverflow.ellipsis,
//                                 maxLines: 2,
//                               ),
//                             ),
//                             const SizedBox(width: 6),
//                             GestureDetector(
//                               onTap: () => _launchURL(job['link']!),
//                               child: Icon(
//                                 Icons.launch,
//                                 color: Color.fromARGB(255, 243, 86, 33),
//                                 size: isMobile ? 18 : 22,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           job['role']!,
//                           style: GoogleFonts.openSans(
//                             fontSize: baseFontSize,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           "📅 Duration: ${job['duration']}",
//                           style: GoogleFonts.openSans(
//                             fontSize: baseFontSize - 2,
//                           ),
//                         ),
//                         Text(
//                           "📞 Contact: ${job['contact']}",
//                           style: GoogleFonts.openSans(
//                             fontSize: baseFontSize - 2,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           job['work']!,
//                           style: GoogleFonts.openSans(
//                             fontSize: isMobile ? 12 : 16,
//                             fontWeight: FontWeight.w600,
//                             fontStyle: FontStyle.italic,

//                             // height: 1.5,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         if (job['applink'] != null)
//                           GestureDetector(
//                             onTap: () => _launchURL(job['applink']!),
//                             child: Text(
//                               job['applink']!,
//                               style: GoogleFonts.openSans(
//                                 fontSize: baseFontSize - 2,
//                                 color: Colors.blue,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class MyStoryScreen extends StatelessWidget {
  const MyStoryScreen({super.key});

  final List<Map<String, String>> jobs = const [
    {
      'company': 'Ricoz',
      'role': 'Flutter Developer ',
      'duration': 'Aug 2023 – May 2024',
      'contact': 'Rajesh Kumar (7050062084)',
      'work':
          'Developed scalable Flutter apps, integrated Firebase (Auth, Firestore, Remote Config), REST API integration, UI from Figma designs.\n\n⚡ Worked on Glamgo App (Salon Service Application).',
      'link': 'https://ricoz.in/',
      'applink': 'https://www.glamgo.in/',
    },
    {
      'company': 'HBPAT (OPC) Pvt. Ltd.(Internship)',
      'role': 'Flutter Developer ',
      'duration': 'Feb 2024 – May 2024',
      'contact': 'Sujit Maske (7709617074)',
      'work':
          'Built responsive Flutter mobile apps, collaborated with teams, implemented clean coding practices, integrated RESTful APIs and Firebase features.',
      'link':
          'https://www.thecompanycheck.com/company/hbpat-opc-private-limited/U74994MH2022OPC376670',
      'applink': 'https://github.com/VEDPRAKASHABPS/grocery.git',
    },
    {
      'company': 'Vigorus Healthtech Private Limited (Chikitsa)',
      'role': 'Flutter Developer ',
      'duration': 'Jun 2024 – Jan 2025',
      'contact': 'Chirag Goyal (8306042333)',
      'work':
          'Contributed to UI redesign and feature delivery in healthcare mobile apps, enhanced patient engagement through clean Flutter development.\n\n⚡ Revamped old Chikitsa App UI/UX and integrated APIs for new functionalities.',
      'link': 'https://g.co/kgs/aNsT6D3',
      'applink': 'https://www.chikitsa.io/',
    },
    {
      'company': 'Nadifit',
      'role': 'Flutter Developer',
      'duration': 'Jan 2025 – Present',
      'contact': 'Manjunath Y C (6360548906)',
      'work':
          'Developed mobile app UI from Figma, integrated Firebase Authentication, Firestore, and implemented API-based features for fitness tracking.\n\n⚡ Built new Nadifit Fitness App (Live on Play Store).',
      'link': 'https://nadifithub.com/',
      'applink':
          'https://play.google.com/store/apps/details?id=com.neubotz.nadifit',
    },
    {
      'company': 'CultYvate Pvt. Ltd.',
      'role': 'Flutter Developer',
      'duration': 'Jun 2025 – Present',
      'contact': 'Sanket (9916141447)',
      'work':
          'Working on an IoT-based AgriTech app to deliver real-time agricultural insights using Flutter.\n\n⚡ Developing features and maintaining CultYvate Service App. (Live on Play Store)',
      'link': 'https://cultyvate.com/',
      'applink':
          'https://play.google.com/store/apps/details?id=com.cultYvate.servicea',
    },
  ];

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    final isTablet = size.width >= 600 && size.width < 1024;
    double baseFontSize =
        isMobile
            ? 12
            : isTablet
            ? 16
            : 16;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue.shade100, Colors.purple.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: isMobile ? 20 : 30),
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: isMobile ? 30 : 60, bottom: 20),
                child: Column(
                  children: [
                    ShaderMask(
                      shaderCallback:
                          (bounds) => const LinearGradient(
                            colors: [Colors.deepPurple, Colors.pink],
                          ).createShader(bounds),
                      child: Text(
                        "🧑‍💻 My Job Journey",
                        style: GoogleFonts.poppins(
                          fontSize: isMobile ? 20 : 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "My growth path — learning, building, and delivering impactful projects!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        fontSize: isMobile ? 12 : 16,
                        height: 1.7,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...List.generate(jobs.length, (index) {
              final job = jobs[index];

              return TweenAnimationBuilder(
                duration: Duration(milliseconds: 500 + index * 200),
                tween: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ),
                builder: (context, Offset offset, child) {
                  return Transform.translate(offset: offset * 50, child: child);
                },
                child: TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: isMobile ? 0.01 : 0.1,
                  isFirst: index == 0,
                  isLast: index == jobs.length - 1,
                  indicatorStyle: IndicatorStyle(
                    width: 24,
                    color: Colors.deepPurple,
                    iconStyle: IconStyle(
                      iconData: Icons.work,
                      color: Colors.white,
                    ),
                  ),
                  beforeLineStyle: const LineStyle(
                    color: Colors.deepPurple,
                    thickness: 2,
                  ),
                  endChild: Container(
                    height: isMobile ? 300 : 280,
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(isMobile ? 14 : 18),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                job['company']!,
                                style: GoogleFonts.poppins(
                                  fontSize: isMobile ? 16 : 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(width: 6),
                            GestureDetector(
                              onTap: () => _launchURL(job['link']!),
                              child: Icon(
                                Icons.launch,
                                color: Color.fromARGB(255, 243, 86, 33),
                                size: isMobile ? 18 : 22,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          job['role']!,
                          style: GoogleFonts.openSans(
                            fontSize: baseFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "🗓 Duration: ${job['duration']}",
                          style: GoogleFonts.openSans(
                            fontSize: baseFontSize - 2,
                          ),
                        ),
                        Text(
                          "📞 Contact: ${job['contact']}",
                          style: GoogleFonts.openSans(
                            fontSize: baseFontSize - 2,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          job['work']!,
                          style: GoogleFonts.openSans(
                            fontSize: isMobile ? 12 : 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(height: 8),
                        if (job['applink'] != null)
                          GestureDetector(
                            onTap: () => _launchURL(job['applink']!),
                            child: Text(
                              job['applink']!,
                              style: GoogleFonts.openSans(
                                fontSize: baseFontSize - 2,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
