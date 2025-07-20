// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ProjectsScreen extends StatelessWidget {
//   const ProjectsScreen({super.key});

//   final List<Map<String, String>> projects = const [
//     {
//       'title': 'Glamgo App',
//       'description':
//           'Flutter-based salon booking app for Ricoz with Firebase, REST APIs, and Figma-based UI integration.',
//       'image': 'assets/glamgoimg.jpeg',
//       'github': 'https://github.com/VEDPRAKASHABPS/glamgo_user.git',
//       'live': 'https://www.glamgo.in/',
//     },
//     {
//       'title': 'Chikitsa App',
//       'description':
//           'Developed UI in Flutter and integrated APIs for Vigorus Healthtech’s healthcare app. (Live on Play Store)',
//       'image': 'assets/chikitsaimg.png',
//       'github': 'https://github.com/VEDPRAKASHABPS/chikitsa_app.git',
//       'live': 'https://www.chikitsa.io/',
//     },
//     {
//       'title': 'Nadifit App',
//       'description':
//           'Built a wellness app at Nadifit® using Flutter, combining ancient health wisdom with modern tech. (Live on Play Store)',
//       'image': 'assets/nadifimg.png',
//       'github': 'https://github.com/VEDPRAKASHABPS/nadifit_app.git',
//       'live':
//           'https://play.google.com/store/apps/details?id=com.neubotz.nadifit',
//     },
//     {
//       'title': 'Cultyvateservice',
//       'description':
//           'Currently building an IoT-based AgriTech app at CultYvate using Flutter for real-time farm insights. (Live on Play Store)',
//       'image': 'assets/instaui.png',
//       'github': 'https://github.com/VEDPRAKASHABPS/cultyvate_serviceapp.git',
//       'live':
//           'https://play.google.com/store/apps/details?id=com.cultYvate.servicea',
//     },
//   ];

//   void _launchURL(String url) async {
//     if (url != '#' && await canLaunchUrl(Uri.parse(url))) {
//       await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isMobile = size.width < 600;

//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
//       color: Colors.deepPurple.shade50,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ShaderMask(
//             shaderCallback:
//                 (bounds) => const LinearGradient(
//                   colors: [Colors.deepPurple, Colors.pink],
//                 ).createShader(bounds),
//             child: Text(
//               "🚀 Projects",
//               style: GoogleFonts.poppins(
//                 fontSize: isMobile ? 22 : 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 800),
//             child: Text(
//               "Here are some of the real-world applications I've developed or contributed to. "
//               "These projects span across different domains like salon services, e-commerce, healthcare, and fitness. "
//               "Each project showcases my proficiency in Flutter, Firebase integration, REST APIs, clean UI/UX development, and state management.",
//               textAlign: TextAlign.start,
//               style: GoogleFonts.openSans(
//                 fontSize: isMobile ? 12 : 16,
//                 height: 1.7,
//                 fontWeight: FontWeight.w600,
//                 fontStyle: FontStyle.italic,
//                 color: Colors.black87,
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),
//           Wrap(
//             spacing: 20,
//             runSpacing: 20,
//             alignment: WrapAlignment.center,
//             children:
//                 projects
//                     .map(
//                       (project) =>
//                           ProjectCard(project: project, isMobile: isMobile),
//                     )
//                     .toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProjectCard extends StatefulWidget {
//   final Map<String, String> project;
//   final bool isMobile;

//   const ProjectCard({super.key, required this.project, required this.isMobile});

//   @override
//   State<ProjectCard> createState() => _ProjectCardState();
// }

// class _ProjectCardState extends State<ProjectCard> {
//   bool _isHovered = false;

//   final List<List<Color>> gradients = [
//     // [Colors.red, Colors.orange],
//     [Colors.purple, Colors.pink],
//     [Colors.red, Colors.orange],
//     [Colors.deepPurple, Colors.amber],
//     [Colors.blue, Colors.teal],
//     [Colors.indigo, Colors.cyan],
//     [Colors.green, Colors.lime],
//   ];

//   late final List<Color> _bgColors;

//   @override
//   void initState() {
//     super.initState();
//     _bgColors = gradients[widget.project['title']!.hashCode % gradients.length];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         transform:
//             _isHovered
//                 ? Matrix4.translationValues(0, -8, 0)
//                 : Matrix4.identity(),
//         decoration: BoxDecoration(
//           gradient:
//               _isHovered
//                   ? LinearGradient(colors: _bgColors)
//                   : const LinearGradient(colors: [Colors.white, Colors.white]),
//           borderRadius: BorderRadius.circular(14),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(_isHovered ? 0.25 : 0.05),
//               blurRadius: 12,
//               offset: const Offset(0, 6),
//             ),
//           ],
//         ),
//         child: SizedBox(
//           width: 280,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(14),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image.asset(
//                   widget.project['image']!,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(14),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         widget.project['title']!,
//                         style: TextStyle(
//                           fontSize: widget.isMobile ? 16 : 18,
//                           fontWeight: FontWeight.bold,
//                           color: _isHovered ? Colors.white : Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 6),
//                       Text(
//                         widget.project['description']!,
//                         style: TextStyle(
//                           fontStyle: FontStyle.italic,
//                           fontSize: widget.isMobile ? 12 : 14,
//                           color: _isHovered ? Colors.white70 : Colors.black87,
//                         ),
//                       ),
//                       const SizedBox(height: 14),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton.icon(
//                             onPressed:
//                                 () => _launchURL(widget.project['github']!),
//                             icon: const Icon(Icons.code),
//                             label: const Text("GitHub"),
//                             style: TextButton.styleFrom(
//                               foregroundColor:
//                                   _isHovered ? Colors.white : Colors.deepPurple,
//                               textStyle: TextStyle(
//                                 fontSize: widget.isMobile ? 14 : 16,
//                               ),
//                             ),
//                           ),
//                           TextButton.icon(
//                             onPressed:
//                                 widget.project['live'] == '#'
//                                     ? null
//                                     : () => _launchURL(widget.project['live']!),
//                             icon: const Icon(Icons.launch),
//                             label: const Text("Live"),
//                             style: TextButton.styleFrom(
//                               foregroundColor:
//                                   _isHovered
//                                       ? Colors.white
//                                       : const Color.fromARGB(255, 180, 89, 4),
//                               textStyle: TextStyle(
//                                 fontSize: widget.isMobile ? 14 : 16,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _launchURL(String url) async {
//     if (url != '#' && await canLaunchUrl(Uri.parse(url))) {
//       await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  void _launchURL(String url) async {
    if (url != '#' && await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;

    final List<Map<String, String>> projects = [
      {
        'title': 'Glamgo App',
        'description':
            'Flutter-based salon booking app for Ricoz with Firebase, REST APIs, and Figma-based UI integration.',
        'image': 'assets/glamgoimg.jpeg',
        'github': 'https://github.com/VEDPRAKASHABPS/glamgo_user.git',
        'live': 'https://www.glamgo.in/',
      },
      {
        'title': 'Chikitsa App',
        'description':
            'Developed UI in Flutter and integrated APIs for Vigorus Healthtech’s healthcare app. (Live on Play Store)',
        'image': 'assets/chikitsaimg.png',
        'github': 'https://github.com/VEDPRAKASHABPS/chikitsa_app.git',
        'live': 'https://www.chikitsa.io/',
      },
      {
        'title': 'Nadifit App',
        'description':
            'Built a wellness app at Nadifit® using Flutter, combining ancient health wisdom with modern tech. (Live on Play Store)',
        'image': 'assets/nadifimg.png',
        'github': 'https://github.com/VEDPRAKASHABPS/nadifit_app.git',
        'live':
            'https://play.google.com/store/apps/details?id=com.neubotz.nadifit',
      },
      {
        'title': 'Cultyvateservice',
        'description':
            'Currently building an IoT-based AgriTech app at CultYvate using Flutter for real-time farm insights. (Live on Play Store)',
        'image': 'assets/cultyvate.png',
        'github': 'https://github.com/VEDPRAKASHABPS/cultyvate_serviceapp.git',
        'live':
            'https://play.google.com/store/apps/details?id=com.cultYvate.servicea',
      },
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      color: Colors.deepPurple.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback:
                (bounds) => const LinearGradient(
                  colors: [Colors.deepPurple, Colors.pink],
                ).createShader(bounds),
            child: Text(
              "🚀 Projects",
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 22 : 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Text(
              "Here are some of the real-world applications I've developed or contributed to. "
              "These projects span across different domains like salon services, e-commerce, healthcare, and fitness. "
              "Each project showcases my proficiency in Flutter, Firebase integration, REST APIs, clean UI/UX development, and state management.",
              textAlign: TextAlign.start,
              style: GoogleFonts.openSans(
                fontSize: isMobile ? 12 : 16,
                height: 1.7,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children:
                projects
                    .map(
                      (project) => ProjectCard(
                        project: project,
                        isMobile: isMobile,
                        launchURL: _launchURL,
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final Map<String, String> project;
  final bool isMobile;
  final void Function(String) launchURL;

  const ProjectCard({
    super.key,
    required this.project,
    required this.isMobile,
    required this.launchURL,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  final List<List<Color>> gradients = [
    [Colors.purple, Colors.pink],
    [Colors.red, Colors.orange],
    [Colors.deepPurple, Colors.amber],
    [Colors.blue, Colors.teal],
    [Colors.indigo, Colors.cyan],
    [Colors.green, Colors.lime],
  ];

  late final List<Color> _bgColors;

  @override
  void initState() {
    super.initState();
    _bgColors = gradients[widget.project['title']!.hashCode % gradients.length];
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform:
            _isHovered
                ? Matrix4.translationValues(0, -8, 0)
                : Matrix4.identity(),
        decoration: BoxDecoration(
          gradient:
              _isHovered
                  ? LinearGradient(colors: _bgColors)
                  : const LinearGradient(colors: [Colors.white, Colors.white]),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isHovered ? 0.25 : 0.05),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: SizedBox(
          width: 280,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.project['image']!,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.project['title']!,
                        style: TextStyle(
                          fontSize: widget.isMobile ? 16 : 18,
                          fontWeight: FontWeight.bold,
                          color: _isHovered ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        widget.project['description']!,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: widget.isMobile ? 12 : 14,
                          color: _isHovered ? Colors.white70 : Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed:
                                () => widget.launchURL(
                                  widget.project['github'] ?? '#',
                                ),
                            icon: const Icon(Icons.code),
                            label: const Text("GitHub"),
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  _isHovered ? Colors.white : Colors.deepPurple,
                              textStyle: TextStyle(
                                fontSize: widget.isMobile ? 14 : 16,
                              ),
                            ),
                          ),
                          TextButton.icon(
                            onPressed:
                                (widget.project['live'] == null ||
                                        widget.project['live'] == '#')
                                    ? null
                                    : () => widget.launchURL(
                                      widget.project['live'] ?? '#',
                                    ),
                            icon: const Icon(Icons.launch),
                            label: const Text("Live"),
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  _isHovered
                                      ? Colors.white
                                      : const Color.fromARGB(255, 180, 89, 4),
                              textStyle: TextStyle(
                                fontSize: widget.isMobile ? 14 : 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
