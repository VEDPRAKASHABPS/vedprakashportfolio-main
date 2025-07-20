// import 'package:flutter/material.dart';
// import 'package:vedprakashportfolio/about_screen.dart';
// import 'package:vedprakashportfolio/contact_screen.dart';
// import 'package:vedprakashportfolio/experience_screen.dart';
// import 'package:vedprakashportfolio/home_screen.dart';
// import 'package:vedprakashportfolio/mystory.dart';
// import 'package:vedprakashportfolio/projects_screen.dart';

// void main() {
//   runApp(const MyPortfolioApp());
// }

// class MyPortfolioApp extends StatelessWidget {
//   const MyPortfolioApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ved Prakash | Portfolio',
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         scaffoldBackgroundColor: Colors.grey[50],
//         textTheme: const TextTheme(bodyMedium: TextStyle(fontFamily: 'Arial')),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const PortfolioHome(),
//     );
//   }
// }

// class PortfolioHome extends StatefulWidget {
//   const PortfolioHome({super.key});

//   @override
//   State<PortfolioHome> createState() => _PortfolioHomeState();
// }

// class _PortfolioHomeState extends State<PortfolioHome> {
//   final ScrollController _scrollController = ScrollController();

//   final homeKey = GlobalKey();
//   final aboutKey = GlobalKey();
//   final experienceKey = GlobalKey();
//   final storyKey = GlobalKey();
//   final projectsKey = GlobalKey();
//   final contactKey = GlobalKey();

//   void scrollToSection(GlobalKey key) {
//     Scrollable.ensureVisible(
//       key.currentContext!,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isMobile = MediaQuery.of(context).size.width < 700;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("VED PRAKASH", style: TextStyle(color: Colors.white)),
//         // centerTitle: true,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.lightBlue.shade100, Colors.purple.shade200],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions:
//             isMobile
//                 ? [
//                   PopupMenuButton<String>(
//                     icon: const Icon(Icons.menu, color: Colors.white),
//                     onSelected: (value) {
//                       switch (value) {
//                         case "home":
//                           scrollToSection(homeKey);
//                           break;
//                         case "about":
//                           scrollToSection(aboutKey);
//                           break;
//                         case "experience":
//                           scrollToSection(experienceKey);
//                           break;
//                         case "mystory":
//                           scrollToSection(storyKey);
//                           break;
//                         case "projects":
//                           scrollToSection(projectsKey);
//                           break;
//                         case "contact":
//                           scrollToSection(contactKey);
//                           break;
//                       }
//                     },
//                     itemBuilder:
//                         (context) => const [
//                           PopupMenuItem(value: "home", child: Text("Home")),
//                           PopupMenuItem(value: "about", child: Text("About")),
//                           PopupMenuItem(
//                             value: "experience",
//                             child: Text("Experience"),
//                           ),
//                           PopupMenuItem(
//                             value: "mystory",
//                             child: Text("My Story"),
//                           ),
//                           PopupMenuItem(
//                             value: "projects",
//                             child: Text("Projects"),
//                           ),
//                           PopupMenuItem(
//                             value: "contact",
//                             child: Text("Contact"),
//                           ),
//                         ],
//                   ),
//                 ]
//                 : [
//                   TextButton(
//                     onPressed: () => scrollToSection(homeKey),
//                     child: const Text(
//                       "Home",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () => scrollToSection(aboutKey),
//                     child: const Text(
//                       "About",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () => scrollToSection(experienceKey),
//                     child: const Text(
//                       "Experience",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () => scrollToSection(storyKey),
//                     child: const Text(
//                       "My Story",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () => scrollToSection(projectsKey),
//                     child: const Text(
//                       "Projects",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () => scrollToSection(contactKey),
//                     child: const Text(
//                       "Contact",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ],
//       ),
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: isMobile ? 16 : 32,
//             vertical: isMobile ? 20 : 30,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               KeyedSubtree(key: homeKey, child: HomeScreen()),
//               KeyedSubtree(key: aboutKey, child: AboutScreen()),
//               KeyedSubtree(key: experienceKey, child: ExperienceScreen()),
//               KeyedSubtree(
//                 key: storyKey,
//                 child: const SizedBox(height: 500, child: MyStoryScreen()),
//               ),
//               KeyedSubtree(key: projectsKey, child: const ProjectsScreen()),
//               KeyedSubtree(key: contactKey, child: const ContactScreen()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vedprakashportfolio/about_screen.dart';
import 'package:vedprakashportfolio/contact_screen.dart';
import 'package:vedprakashportfolio/experience_screen.dart';
import 'package:vedprakashportfolio/home_screen.dart';
import 'package:vedprakashportfolio/mystory.dart';
import 'package:vedprakashportfolio/projects_screen.dart';
import 'firebase_options.dart'; // auto-generated file from Firebase CLI

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ved Prakash | Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[50],
        textTheme: const TextTheme(bodyMedium: TextStyle(fontFamily: 'Arial')),
      ),
      debugShowCheckedModeBanner: false,
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final ScrollController _scrollController = ScrollController();

  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final experienceKey = GlobalKey();
  final storyKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;

    return Scaffold(
      appBar: AppBar(
        title: const Text("VED PRAKASH", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue.shade100, Colors.purple.shade200],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions:
            isMobile
                ? [
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onSelected: (value) {
                      switch (value) {
                        case "home":
                          scrollToSection(homeKey);
                          break;
                        case "about":
                          scrollToSection(aboutKey);
                          break;
                        case "experience":
                          scrollToSection(experienceKey);
                          break;
                        case "mystory":
                          scrollToSection(storyKey);
                          break;
                        case "projects":
                          scrollToSection(projectsKey);
                          break;
                        case "contact":
                          scrollToSection(contactKey);
                          break;
                      }
                    },
                    itemBuilder:
                        (context) => const [
                          PopupMenuItem(value: "home", child: Text("Home")),
                          PopupMenuItem(value: "about", child: Text("About")),
                          PopupMenuItem(
                            value: "experience",
                            child: Text("Experience"),
                          ),
                          PopupMenuItem(
                            value: "mystory",
                            child: Text("My Story"),
                          ),
                          PopupMenuItem(
                            value: "projects",
                            child: Text("Projects"),
                          ),
                          PopupMenuItem(
                            value: "contact",
                            child: Text("Contact"),
                          ),
                        ],
                  ),
                ]
                : [
                  TextButton(
                    onPressed: () => scrollToSection(homeKey),
                    child: const Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(aboutKey),
                    child: const Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(experienceKey),
                    child: const Text(
                      "Experience",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(storyKey),
                    child: const Text(
                      "My Story",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(projectsKey),
                    child: const Text(
                      "Projects",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(contactKey),
                    child: const Text(
                      "Contact",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 15 : 32,
            vertical: isMobile ? 20 : 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KeyedSubtree(key: homeKey, child: HomeScreen()),
              KeyedSubtree(key: aboutKey, child: AboutScreen()),
              KeyedSubtree(key: experienceKey, child: ExperienceScreen()),
              KeyedSubtree(
                key: storyKey,
                child: const SizedBox(height: 500, child: MyStoryScreen()),
              ),
              KeyedSubtree(key: projectsKey, child: const ProjectsScreen()),
              KeyedSubtree(key: contactKey, child: const ContactScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
