import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceScreen extends StatelessWidget {
  ExperienceScreen({super.key});

  final List<Map<String, dynamic>> skills = const [
    {"title": "Flutter", "level": "Experienced", "icon": Icons.phone_iphone},
    {"title": "Dart", "level": "Experienced", "icon": Icons.code},
    {"title": "Firebase", "level": "Experienced", "icon": Icons.cloud},
    {
      "title": "State Management",
      "level": "Experienced",
      "icon": Icons.sync_alt,
    },
    {"title": "REST APIs", "level": "Experienced", "icon": Icons.api},
    {
      "title": "Testing & Debugging",
      "level": "Experienced",
      "icon": Icons.bug_report,
    },
    {
      "title": "Cross-Platform Development",
      "level": "Experienced",
      "icon": Icons.devices,
    },
    {"title": "Git & GitHub", "level": "Experienced", "icon": Icons.merge_type},
    {"title": "HTML", "level": "Experienced", "icon": Icons.language},
    {"title": "CSS", "level": "Experienced", "icon": Icons.style},
    {"title": "JavaScript", "level": "Experienced", "icon": Icons.web},
    // {"title": "Python", "level": "Experienced", "icon": Icons.memory},
    {
      "title": "C/C++",
      "level": "Experienced",
      "icon": Icons.precision_manufacturing,
    },
  ];

  final List<Map<String, dynamic>> highlights = [
    {
      "text": "Crafted high-performance apps with Flutter and Dart.",
      "icon": Icons.phone_android,
    },
    {
      "text":
          "Integrated Firebase Authentication, Firestore, and Cloud Functions.",
      "icon": Icons.cloud_done,
    },
    {
      "text": "Created RESTful API backends using Node.js and MongoDB.",
      "icon": Icons.api,
    },
    {
      "text": "Experienced in Git/GitHub version control workflows.",
      "icon": Icons.merge_type,
    },
    {
      "text": "Proficient in web technologies: HTML, CSS, JavaScript.",
      "icon": Icons.web,
    },
    {
      "text": "Strong foundation in Python and C/C++ programming languages.",
      "icon": Icons.memory,
    },
    {
      "text":
          "Passionate about solving complex problems and continuous learning.",
      "icon": Icons.lightbulb_outline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 30 : 60,
      ),
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
              "💼 Experience & Skills",
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 20 : 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 30),

          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding: EdgeInsets.all(isMobile ? 16 : 28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.15),
                  blurRadius: 14,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  highlights.map((highlight) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            highlight['icon'],
                            color: const Color(0xFFF0B15A),
                            size: isMobile ? 18 : 22,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              highlight['text'],
                              style: GoogleFonts.openSans(
                                fontSize: isMobile ? 12 : 16,
                                height: 1.6,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ),

          const SizedBox(height: 40),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: skills.map((skill) => SkillCard(skill: skill)).toList(),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatefulWidget {
  final Map<String, dynamic> skill;
  const SkillCard({super.key, required this.skill});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _isActive = false;

  final List<List<Color>> gradients = [
    [Colors.redAccent, Colors.orangeAccent],
    [Colors.deepPurpleAccent, Colors.pinkAccent],
    [Colors.deepPurple, Colors.amber],
    [Colors.blue, Colors.teal],
    [Colors.indigo, Colors.cyan],
    [Colors.green, Colors.lime],
  ];

  late final List<Color> _gradientColors;

  @override
  void initState() {
    super.initState();
    _gradientColors =
        gradients[widget.skill['title'].hashCode % gradients.length];
  }

  void _setActive(bool active) => setState(() => _isActive = active);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;
    return Listener(
      onPointerDown: (_) => _setActive(true),
      onPointerUp: (_) => _setActive(false),
      child: MouseRegion(
        onEnter: (_) => _setActive(true),
        onExit: (_) => _setActive(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: isMobile ? 135 : 180,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient:
                _isActive
                    ? LinearGradient(colors: _gradientColors)
                    : const LinearGradient(
                      colors: [Colors.white, Colors.white],
                    ),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.skill['icon'],
                color: _isActive ? Colors.white : const Color(0xFFF0B15A),
                size: isMobile ? 18 : 22,
              ),
              const SizedBox(height: 10),
              Text(
                widget.skill['title'],
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 12 : 16,
                  color: _isActive ? Colors.white : Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                widget.skill['level'],
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 12 : 13,
                  color: _isActive ? Colors.white : Colors.deepPurple,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
