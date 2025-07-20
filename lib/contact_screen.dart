// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:vedprakashportfolio/social_icon.dart';

// // class ContactScreen extends StatefulWidget {
// //   const ContactScreen({super.key});

// //   @override
// //   State<ContactScreen> createState() => _ContactScreenState();
// // }

// // class _ContactScreenState extends State<ContactScreen>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<double> _fadeIn;
// //   late Animation<Offset> _slideAnimation;

// //   final nameController = TextEditingController();
// //   final emailController = TextEditingController();
// //   final phoneController = TextEditingController();
// //   final messageController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(milliseconds: 1000),
// //       vsync: this,
// //     );
// //     _fadeIn = Tween<double>(
// //       begin: 0,
// //       end: 1,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
// //     _slideAnimation = Tween<Offset>(
// //       begin: const Offset(0, 0.3),
// //       end: Offset.zero,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

// //     _controller.forward();
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     nameController.dispose();
// //     emailController.dispose();
// //     phoneController.dispose();
// //     messageController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //     final isMobile = size.width < 700;

// //     return FadeTransition(
// //       opacity: _fadeIn,
// //       child: LayoutBuilder(
// //         builder: (context, constraints) {
// //           return Container(
// //             width: double.infinity,
// //             padding: EdgeInsets.symmetric(
// //               vertical: isMobile ? 40 : 60,
// //               horizontal: isMobile ? 16 : 40,
// //             ),
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Color(0xFFe0c3fc), Color(0xFF8ec5fc)],
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //             child: Center(
// //               child: ConstrainedBox(
// //                 constraints: const BoxConstraints(maxWidth: 1200),
// //                 child:
// //                     isMobile
// //                         ? Column(
// //                           children: [
// //                             _buildContactInfo(isMobile),
// //                             const SizedBox(height: 40),
// //                             _buildMessageForm(isMobile),
// //                           ],
// //                         )
// //                         : Row(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Expanded(child: _buildContactInfo(isMobile)),
// //                             const SizedBox(width: 40),
// //                             Expanded(child: _buildMessageForm(isMobile)),
// //                           ],
// //                         ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildContactInfo(bool isMobile) {
// //     return TweenAnimationBuilder(
// //       duration: const Duration(milliseconds: 800),
// //       tween: Tween<double>(begin: 0.8, end: 1.0),
// //       curve: Curves.easeOut,
// //       builder: (context, value, child) {
// //         return Transform.scale(scale: value, child: child);
// //       },
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           ShaderMask(
// //             shaderCallback:
// //                 (bounds) => const LinearGradient(
// //                   colors: [Colors.deepPurple, Colors.pink],
// //                 ).createShader(bounds),
// //             child: Text(
// //               "📬 Contact Me",
// //               style: GoogleFonts.poppins(
// //                 fontSize: isMobile ? 24 : 30,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 16),
// //           Text(
// //             "Have an exciting project idea or collaboration in mind? \nFeel free to drop a message — I'll get back to you shortly! Let's build something amazing together with passion and precision.",
// //             style: GoogleFonts.openSans(
// //               fontSize: isMobile ? 14 : 16,
// //               height: 1.7,
// //               fontWeight: FontWeight.w600,
// //               fontStyle: FontStyle.italic,
// //               color: Colors.black87,
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           Text(
// //             "📱 Mobile: +91 9472795244",
// //             style: GoogleFonts.openSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: isMobile ? 13 : 15,
// //             ),
// //           ),
// //           Text(
// //             "✉️ Email: vedprakashabps@gmail.com",
// //             style: GoogleFonts.openSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: isMobile ? 13 : 15,
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           SlideTransition(
// //             position: _slideAnimation,
// //             child: FadeTransition(
// //               opacity: _fadeIn,
// //               child: Wrap(
// //                 spacing: 10,
// //                 runSpacing: 10,
// //                 children: const [
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-instagram-94.png',
// //                     url:
// //                         'https://www.instagram.com/invites/contact/?i=1or38907mqu1u&utm_content=kuwkpim',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-twitter-64.png',
// //                     url: 'https://twitter.com/vedprak43821488',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-facebook-48.png',
// //                     url:
// //                         'https://www.facebook.com/profile.php?id=100062746260333',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-youtube-48.png',
// //                     url:
// //                         'https://youtube.com/@vedprakashabps?si=n1ijKLZfatj1YVLG',
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildMessageForm(bool isMobile) {
// //     bool isHovered = false;

// //     return StatefulBuilder(
// //       builder: (context, setState) {
// //         return MouseRegion(
// //           onEnter: (_) => setState(() => isHovered = true),
// //           onExit: (_) => setState(() => isHovered = false),
// //           child: AnimatedContainer(
// //             duration: const Duration(milliseconds: 300),
// //             transform:
// //                 isHovered
// //                     ? Matrix4.translationValues(0, -8, 0)
// //                     : Matrix4.identity(),
// //             decoration: BoxDecoration(
// //               boxShadow: [
// //                 BoxShadow(
// //                   color:
// //                       isHovered
// //                           ? Colors.deepPurple.withOpacity(0.3)
// //                           : Colors.black.withOpacity(0.1),
// //                   blurRadius: 30,
// //                   spreadRadius: 8,
// //                   offset: const Offset(0, 10),
// //                 ),
// //               ],
// //               borderRadius: BorderRadius.circular(16),
// //             ),
// //             child: Card(
// //               elevation: 0,
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(16),
// //               ),
// //               child: Padding(
// //                 padding: EdgeInsets.all(isMobile ? 16 : 24),
// //                 child: Column(
// //                   children: [
// //                     Text(
// //                       "📨 Send Message",
// //                       style: GoogleFonts.poppins(
// //                         fontSize: isMobile ? 22 : 26,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.deepPurple.shade800,
// //                       ),
// //                     ),
// //                     const SizedBox(height: 16),
// //                     contactField("Your Name", nameController),
// //                     const SizedBox(height: 10),
// //                     contactField("Your Email", emailController),
// //                     const SizedBox(height: 10),
// //                     contactField("Your Mobile Number", phoneController),
// //                     const SizedBox(height: 10),
// //                     contactField(
// //                       "How Can I Help You?",
// //                       messageController,
// //                       maxLines: 4,
// //                     ),
// //                     const SizedBox(height: 20),
// //                     ElevatedButton(
// //                       onPressed: () {
// //                         FocusScope.of(context).unfocus();
// //                         ScaffoldMessenger.of(context).showSnackBar(
// //                           const SnackBar(
// //                             content: Text(
// //                               "Thanks for reaching out! I'll connect with you shortly 😊",
// //                             ),
// //                             backgroundColor: Colors.deepPurple,
// //                           ),
// //                         );
// //                       },
// //                       style: ElevatedButton.styleFrom(
// //                         padding: const EdgeInsets.symmetric(
// //                           horizontal: 32,
// //                           vertical: 16,
// //                         ),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                         backgroundColor: Colors.deepPurple,
// //                         foregroundColor: Colors.white,
// //                       ),
// //                       child: const Text(
// //                         "Send Message",
// //                         style: TextStyle(fontSize: 16),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget contactField(
// //     String hint,
// //     TextEditingController controller, {
// //     int maxLines = 1,
// //   }) {
// //     return TextField(
// //       controller: controller,
// //       maxLines: maxLines,
// //       decoration: InputDecoration(
// //         hintText: hint,
// //         filled: true,
// //         fillColor: Colors.white,
// //         enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(12),
// //           borderSide: BorderSide(color: Colors.deepPurple.shade300),
// //         ),
// //         focusedBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(12),
// //           borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
// //         ),
// //         contentPadding: const EdgeInsets.symmetric(
// //           horizontal: 16,
// //           vertical: 14,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:vedprakashportfolio/social_icon.dart';

// // class ContactScreen extends StatefulWidget {
// //   const ContactScreen({super.key});

// //   @override
// //   State<ContactScreen> createState() => _ContactScreenState();
// // }

// // class _ContactScreenState extends State<ContactScreen>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<double> _fadeIn;
// //   late Animation<Offset> _slideAnimation;

// //   final nameController = TextEditingController();
// //   final emailController = TextEditingController();
// //   final phoneController = TextEditingController();
// //   final messageController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(milliseconds: 1000),
// //       vsync: this,
// //     );
// //     _fadeIn = Tween<double>(
// //       begin: 0,
// //       end: 1,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
// //     _slideAnimation = Tween<Offset>(
// //       begin: const Offset(0, 0.3),
// //       end: Offset.zero,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

// //     _controller.forward();
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     nameController.dispose();
// //     emailController.dispose();
// //     phoneController.dispose();
// //     messageController.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _submitForm() async {
// //     final name = nameController.text.trim();
// //     final email = emailController.text.trim();
// //     final phone = phoneController.text.trim();
// //     final message = messageController.text.trim();

// //     if (name.isEmpty || email.isEmpty || message.isEmpty) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text("Please fill out all required fields"),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //       return;
// //     }

// //     try {
// //       await FirebaseFirestore.instance.collection('contactMessages').add({
// //         'name': name,
// //         'email': email,
// //         'phone': phone,
// //         'message': message,
// //         'timestamp': FieldValue.serverTimestamp(),
// //       });

// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text("Thanks for reaching out! I'll connect with you 😊"),
// //           backgroundColor: Colors.deepPurple,
// //         ),
// //       );

// //       nameController.clear();
// //       emailController.clear();
// //       phoneController.clear();
// //       messageController.clear();
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text("Something went wrong! Try again later."),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //     final isMobile = size.width < 700;

// //     return FadeTransition(
// //       opacity: _fadeIn,
// //       child: LayoutBuilder(
// //         builder: (context, constraints) {
// //           return Container(
// //             width: double.infinity,
// //             padding: EdgeInsets.symmetric(
// //               vertical: isMobile ? 40 : 60,
// //               horizontal: isMobile ? 16 : 40,
// //             ),
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Color(0xFFe0c3fc), Color(0xFF8ec5fc)],
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //             child: Center(
// //               child: ConstrainedBox(
// //                 constraints: const BoxConstraints(maxWidth: 1200),
// //                 child:
// //                     isMobile
// //                         ? Column(
// //                           children: [
// //                             _buildContactInfo(isMobile),
// //                             const SizedBox(height: 40),
// //                             _buildMessageForm(isMobile),
// //                           ],
// //                         )
// //                         : Row(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Expanded(child: _buildContactInfo(isMobile)),
// //                             const SizedBox(width: 40),
// //                             Expanded(child: _buildMessageForm(isMobile)),
// //                           ],
// //                         ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildContactInfo(bool isMobile) {
// //     return TweenAnimationBuilder(
// //       duration: const Duration(milliseconds: 800),
// //       tween: Tween<double>(begin: 0.8, end: 1.0),
// //       curve: Curves.easeOut,
// //       builder: (context, value, child) {
// //         return Transform.scale(scale: value, child: child);
// //       },
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           ShaderMask(
// //             shaderCallback:
// //                 (bounds) => const LinearGradient(
// //                   colors: [Colors.deepPurple, Colors.pink],
// //                 ).createShader(bounds),
// //             child: Text(
// //               "📬 Contact Me",
// //               style: GoogleFonts.poppins(
// //                 fontSize: isMobile ? 24 : 30,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 16),
// //           Text(
// //             "Have an exciting project idea or collaboration in mind? \nFeel free to drop a message — I'll get back to you shortly! Let's build something amazing together with passion and precision.",
// //             style: GoogleFonts.openSans(
// //               fontSize: isMobile ? 14 : 16,
// //               height: 1.7,
// //               fontWeight: FontWeight.w600,
// //               fontStyle: FontStyle.italic,
// //               color: Colors.black87,
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           Text(
// //             "📱 Mobile: +91 9472795244",
// //             style: GoogleFonts.openSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: isMobile ? 13 : 15,
// //             ),
// //           ),
// //           Text(
// //             "✉️ Email: vedprakashabps@gmail.com",
// //             style: GoogleFonts.openSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: isMobile ? 13 : 15,
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           SlideTransition(
// //             position: _slideAnimation,
// //             child: FadeTransition(
// //               opacity: _fadeIn,
// //               child: Wrap(
// //                 spacing: 10,
// //                 runSpacing: 10,
// //                 children: const [
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-instagram-94.png',
// //                     url:
// //                         'https://www.instagram.com/invites/contact/?i=1or38907mqu1u&utm_content=kuwkpim',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-twitter-64.png',
// //                     url: 'https://twitter.com/vedprak43821488',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-facebook-48.png',
// //                     url:
// //                         'https://www.facebook.com/profile.php?id=100062746260333',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-youtube-48.png',
// //                     url:
// //                         'https://youtube.com/@vedprakashabps?si=n1ijKLZfatj1YVLG',
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildMessageForm(bool isMobile) {
// //     bool isHovered = false;

// //     return StatefulBuilder(
// //       builder: (context, setState) {
// //         return MouseRegion(
// //           onEnter: (_) => setState(() => isHovered = true),
// //           onExit: (_) => setState(() => isHovered = false),
// //           child: AnimatedContainer(
// //             duration: const Duration(milliseconds: 300),
// //             transform:
// //                 isHovered
// //                     ? Matrix4.translationValues(0, -8, 0)
// //                     : Matrix4.identity(),
// //             decoration: BoxDecoration(
// //               boxShadow: [
// //                 BoxShadow(
// //                   color:
// //                       isHovered
// //                           ? Colors.deepPurple.withOpacity(0.3)
// //                           : Colors.black.withOpacity(0.1),
// //                   blurRadius: 30,
// //                   spreadRadius: 8,
// //                   offset: const Offset(0, 10),
// //                 ),
// //               ],
// //               borderRadius: BorderRadius.circular(16),
// //             ),
// //             child: Card(
// //               elevation: 0,
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(16),
// //               ),
// //               child: Padding(
// //                 padding: EdgeInsets.all(isMobile ? 16 : 24),
// //                 child: Column(
// //                   children: [
// //                     Text(
// //                       "📨 Send Message",
// //                       style: GoogleFonts.poppins(
// //                         fontSize: isMobile ? 22 : 26,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.deepPurple.shade800,
// //                       ),
// //                     ),
// //                     const SizedBox(height: 16),
// //                     contactField("Your Name", nameController),
// //                     const SizedBox(height: 10),
// //                     contactField("Your Email", emailController),
// //                     const SizedBox(height: 10),
// //                     contactField("Your Mobile Number", phoneController),
// //                     const SizedBox(height: 10),
// //                     contactField(
// //                       "How Can I Help You?",
// //                       messageController,
// //                       maxLines: 4,
// //                     ),
// //                     const SizedBox(height: 20),
// //                     ElevatedButton(
// //                       onPressed: _submitForm,
// //                       style: ElevatedButton.styleFrom(
// //                         padding: const EdgeInsets.symmetric(
// //                           horizontal: 32,
// //                           vertical: 16,
// //                         ),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                         backgroundColor: Colors.deepPurple,
// //                         foregroundColor: Colors.white,
// //                       ),
// //                       child: const Text(
// //                         "Send Message",
// //                         style: TextStyle(fontSize: 16),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget contactField(
// //     String hint,
// //     TextEditingController controller, {
// //     int maxLines = 1,
// //   }) {
// //     return TextField(
// //       controller: controller,
// //       maxLines: maxLines,
// //       decoration: InputDecoration(
// //         hintText: hint,
// //         filled: true,
// //         fillColor: Colors.white,
// //         enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(12),
// //           borderSide: BorderSide(color: Colors.deepPurple.shade300),
// //         ),
// //         focusedBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(12),
// //           borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
// //         ),
// //         contentPadding: const EdgeInsets.symmetric(
// //           horizontal: 16,
// //           vertical: 14,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:vedprakashportfolio/social_icon.dart';

// // class ContactScreen extends StatefulWidget {
// //   const ContactScreen({super.key});

// //   @override
// //   State<ContactScreen> createState() => _ContactScreenState();
// // }

// // class _ContactScreenState extends State<ContactScreen>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<double> _fadeIn;
// //   late Animation<Offset> _slideAnimation;

// //   final nameController = TextEditingController();
// //   final emailController = TextEditingController();
// //   final phoneController = TextEditingController();
// //   final messageController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(milliseconds: 1000),
// //       vsync: this,
// //     );
// //     _fadeIn = Tween<double>(
// //       begin: 0,
// //       end: 1,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
// //     _slideAnimation = Tween<Offset>(
// //       begin: const Offset(0, 0.3),
// //       end: Offset.zero,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

// //     _controller.forward();
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     nameController.dispose();
// //     emailController.dispose();
// //     phoneController.dispose();
// //     messageController.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _submitForm() async {
// //     final name = nameController.text.trim();
// //     final email = emailController.text.trim();
// //     final phone = phoneController.text.trim();
// //     final message = messageController.text.trim();

// //     if (name.isEmpty || email.isEmpty || message.isEmpty) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text("Please fill out all required fields"),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //       return;
// //     }

// //     try {
// //       await FirebaseFirestore.instance.collection('contactMessages').add({
// //         'name': name,
// //         'email': email,
// //         'phone': phone,
// //         'message': message,
// //         'timestamp': FieldValue.serverTimestamp(),
// //       });

// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text("Thanks for reaching out! I'll connect with you 😊"),
// //           backgroundColor: Colors.deepPurple,
// //         ),
// //       );

// //       nameController.clear();
// //       emailController.clear();
// //       phoneController.clear();
// //       messageController.clear();
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text("Something went wrong! Try again later."),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //     final isMobile = size.width < 700;

// //     return FadeTransition(
// //       opacity: _fadeIn,
// //       child: LayoutBuilder(
// //         builder: (context, constraints) {
// //           return Container(
// //             width: double.infinity,
// //             padding: EdgeInsets.symmetric(
// //               vertical: isMobile ? 40 : 60,
// //               horizontal: isMobile ? 16 : 40,
// //             ),
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Color(0xFFe0c3fc), Color(0xFF8ec5fc)],
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //             child: Center(
// //               child: ConstrainedBox(
// //                 constraints: const BoxConstraints(maxWidth: 1200),
// //                 child:
// //                     isMobile
// //                         ? Column(
// //                           children: [
// //                             _buildContactInfo(isMobile),
// //                             const SizedBox(height: 40),
// //                             _buildMessageForm(isMobile),
// //                           ],
// //                         )
// //                         : Row(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Expanded(child: _buildContactInfo(isMobile)),
// //                             const SizedBox(width: 40),
// //                             Expanded(child: _buildMessageForm(isMobile)),
// //                           ],
// //                         ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildContactInfo(bool isMobile) {
// //     return TweenAnimationBuilder(
// //       duration: const Duration(milliseconds: 800),
// //       tween: Tween<double>(begin: 0.8, end: 1.0),
// //       curve: Curves.easeOut,
// //       builder: (context, value, child) {
// //         return Transform.scale(scale: value, child: child);
// //       },
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           ShaderMask(
// //             shaderCallback:
// //                 (bounds) => const LinearGradient(
// //                   colors: [Colors.deepPurple, Colors.pink],
// //                 ).createShader(bounds),
// //             child: Text(
// //               "📬 Contact Me",
// //               style: GoogleFonts.poppins(
// //                 fontSize: isMobile ? 24 : 30,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 16),
// //           Text(
// //             "Have an exciting project idea or collaboration in mind? \nFeel free to drop a message — I'll get back to you shortly! Let's build something amazing together with passion and precision.",
// //             style: GoogleFonts.openSans(
// //               fontSize: isMobile ? 14 : 16,
// //               height: 1.7,
// //               fontWeight: FontWeight.w600,
// //               fontStyle: FontStyle.italic,
// //               color: Colors.black87,
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           Text(
// //             "📱 Mobile: +91 9472795244",
// //             style: GoogleFonts.openSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: isMobile ? 13 : 15,
// //             ),
// //           ),
// //           Text(
// //             "✉️ Email: vedprakashabps@gmail.com",
// //             style: GoogleFonts.openSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: isMobile ? 13 : 15,
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           SlideTransition(
// //             position: _slideAnimation,
// //             child: FadeTransition(
// //               opacity: _fadeIn,
// //               child: Wrap(
// //                 spacing: 10,
// //                 runSpacing: 10,
// //                 children: const [
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-instagram-94.png',
// //                     url:
// //                         'https://www.instagram.com/invites/contact/?i=1or38907mqu1u&utm_content=kuwkpim',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-twitter-64.png',
// //                     url: 'https://twitter.com/vedprak43821488',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-facebook-48.png',
// //                     url:
// //                         'https://www.facebook.com/profile.php?id=100062746260333',
// //                   ),
// //                   SocialIcon(
// //                     iconPath: 'assets/icons8-youtube-48.png',
// //                     url:
// //                         'https://youtube.com/@vedprakashabps?si=n1ijKLZfatj1YVLG',
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildMessageForm(bool isMobile) {
// //     bool isHovered = false;

// //     return StatefulBuilder(
// //       builder: (context, setState) {
// //         return MouseRegion(
// //           onEnter: (_) => setState(() => isHovered = true),
// //           onExit: (_) => setState(() => isHovered = false),
// //           child: AnimatedContainer(
// //             duration: const Duration(milliseconds: 300),
// //             transform:
// //                 isHovered
// //                     ? Matrix4.translationValues(0, -8, 0)
// //                     : Matrix4.identity(),
// //             decoration: BoxDecoration(
// //               boxShadow: [
// //                 BoxShadow(
// //                   color:
// //                       isHovered
// //                           ? Colors.deepPurple.withOpacity(0.3)
// //                           : Colors.black.withOpacity(0.1),
// //                   blurRadius: 30,
// //                   spreadRadius: 8,
// //                   offset: const Offset(0, 10),
// //                 ),
// //               ],
// //               borderRadius: BorderRadius.circular(16),
// //             ),
// //             child: Card(
// //               elevation: 0,
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(16),
// //               ),
// //               child: AutofillGroup(
// //                 child: Padding(
// //                   padding: EdgeInsets.all(isMobile ? 16 : 24),
// //                   child: Column(
// //                     children: [
// //                       Text(
// //                         "📨 Send Message",
// //                         style: GoogleFonts.poppins(
// //                           fontSize: isMobile ? 22 : 26,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.deepPurple.shade800,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 16),
// //                       contactField(
// //                         "Your Name",
// //                         nameController,
// //                         hint: AutofillHints.name,
// //                       ),
// //                       const SizedBox(height: 10),
// //                       contactField(
// //                         "Your Email",
// //                         emailController,
// //                         hint: AutofillHints.email,
// //                       ),
// //                       const SizedBox(height: 10),
// //                       contactField(
// //                         "Your Mobile Number",
// //                         phoneController,
// //                         hint: AutofillHints.telephoneNumber,
// //                       ),
// //                       const SizedBox(height: 10),
// //                       contactField(
// //                         "How Can I Help You?",
// //                         messageController,
// //                         maxLines: 4,
// //                       ),
// //                       const SizedBox(height: 20),
// //                       ElevatedButton(
// //                         onPressed: _submitForm,
// //                         style: ElevatedButton.styleFrom(
// //                           padding: const EdgeInsets.symmetric(
// //                             horizontal: 32,
// //                             vertical: 16,
// //                           ),
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(8),
// //                           ),
// //                           backgroundColor: Colors.deepPurple,
// //                           foregroundColor: Colors.white,
// //                         ),
// //                         child: const Text(
// //                           "Send Message",
// //                           style: TextStyle(fontSize: 16),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget contactField(
// //     String hintText,
// //     TextEditingController controller, {
// //     int maxLines = 1,
// //     String? hint,
// //   }) {
// //     return TextField(
// //       controller: controller,
// //       maxLines: maxLines,
// //       autofillHints: hint != null ? [hint] : null,
// //       decoration: InputDecoration(
// //         hintText: hintText,
// //         filled: true,
// //         fillColor: Colors.white,
// //         enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(12),
// //           borderSide: BorderSide(color: Colors.deepPurple.shade300),
// //         ),
// //         focusedBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(12),
// //           borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
// //         ),
// //         contentPadding: const EdgeInsets.symmetric(
// //           horizontal: 16,
// //           vertical: 14,
// //         ),
// //       ),
// //       keyboardType:
// //           maxLines == 1
// //               ? (hint == AutofillHints.email
// //                   ? TextInputType.emailAddress
// //                   : (hint == AutofillHints.telephoneNumber
// //                       ? TextInputType.phone
// //                       : TextInputType.text))
// //               : TextInputType.multiline,
// //       textInputAction: TextInputAction.next,
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:vedprakashportfolio/social_icon.dart';

// class ContactScreen extends StatefulWidget {
//   const ContactScreen({super.key});

//   @override
//   State<ContactScreen> createState() => _ContactScreenState();
// }

// class _ContactScreenState extends State<ContactScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeIn;
//   late Animation<Offset> _slideAnimation;

//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final phoneController = TextEditingController();
//   final messageController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     );
//     _fadeIn = Tween<double>(
//       begin: 0,
//       end: 1,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(0, 0.3),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     nameController.dispose();
//     emailController.dispose();
//     phoneController.dispose();
//     messageController.dispose();
//     super.dispose();
//   }

//   Future<void> _submitForm() async {
//     final name = nameController.text.trim();
//     final email = emailController.text.trim();
//     final phone = phoneController.text.trim();
//     final message = messageController.text.trim();

//     if (name.isEmpty || email.isEmpty || message.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("Please fill out all required fields"),
//           backgroundColor: Colors.red,
//         ),
//       );
//       return;
//     }

//     try {
//       await FirebaseFirestore.instance.collection('contactMessages').add({
//         'name': name,
//         'email': email,
//         'phone': phone,
//         'message': message,
//         'timestamp': FieldValue.serverTimestamp(),
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("Thanks for reaching out! I'll connect with you 😊"),
//           backgroundColor: Colors.deepPurple,
//         ),
//       );

//       nameController.clear();
//       emailController.clear();
//       phoneController.clear();
//       messageController.clear();
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("Something went wrong! Try again later."),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isMobile = size.width < 700;

//     return FadeTransition(
//       opacity: _fadeIn,
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           return Stack(
//             children: [
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.symmetric(
//                   vertical: isMobile ? 40 : 60,
//                   horizontal: isMobile ? 16 : 40,
//                 ),
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xFFe0c3fc), Color(0xFF8ec5fc)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Center(
//                   child: ConstrainedBox(
//                     constraints: const BoxConstraints(maxWidth: 1200),
//                     child:
//                         isMobile
//                             ? Column(
//                               children: [
//                                 _buildContactInfo(isMobile),
//                                 const SizedBox(height: 40),
//                                 _buildMessageForm(isMobile),
//                               ],
//                             )
//                             : Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Expanded(child: _buildContactInfo(isMobile)),
//                                 const SizedBox(width: 40),
//                                 Expanded(child: _buildMessageForm(isMobile)),
//                               ],
//                             ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//               // Footer
//               Positioned(
//                 left: 25,
//                 bottom: 10,
//                 child: Text(
//                   'Copyright © 2025 VED PRAKASH. All Rights Reserved.',
//                   style: GoogleFonts.openSans(
//                     fontSize: isMobile ? 10 : 12,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildContactInfo(bool isMobile) {
//     return TweenAnimationBuilder(
//       duration: const Duration(milliseconds: 800),
//       tween: Tween<double>(begin: 0.8, end: 1.0),
//       curve: Curves.easeOut,
//       builder: (context, value, child) {
//         return Transform.scale(scale: value, child: child);
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ShaderMask(
//             shaderCallback:
//                 (bounds) => const LinearGradient(
//                   colors: [Colors.deepPurple, Colors.pink],
//                 ).createShader(bounds),
//             child: Text(
//               "📬 Contact Me",
//               style: GoogleFonts.poppins(
//                 fontSize: isMobile ? 22 : 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           Text(
//             "Have an exciting project idea or collaboration in mind? \nFeel free to drop a message — I'll get back to you shortly! Let's build something amazing together with passion and precision.",
//             style: GoogleFonts.openSans(
//               fontSize: isMobile ? 12 : 16,
//               height: 1.7,
//               fontWeight: FontWeight.w600,
//               fontStyle: FontStyle.italic,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             "📱 Mobile: +91 9472795244",
//             style: GoogleFonts.openSans(
//               fontWeight: FontWeight.w600,
//               fontSize: isMobile ? 12 : 15,
//             ),
//           ),
//           Text(
//             "✉️ Email: vedprakashabps@gmail.com",
//             style: GoogleFonts.openSans(
//               fontWeight: FontWeight.w600,
//               fontSize: isMobile ? 12 : 15,
//             ),
//           ),
//           const SizedBox(height: 20),
//           SlideTransition(
//             position: _slideAnimation,
//             child: FadeTransition(
//               opacity: _fadeIn,
//               child: Wrap(
//                 spacing: 10,
//                 runSpacing: 10,
//                 children: const [
//                   SocialIcon(
//                     iconPath: 'assets/icons8instagram.png',
//                     url: 'https://www.instagram.com/vedprakashabpsgmailcom/',
//                   ),
//                   SocialIcon(
//                     iconPath: 'assets/icons8-twitter-64.png',
//                     url: 'https://twitter.com/vedprak43821488',
//                   ),
//                   SocialIcon(
//                     iconPath: 'assets/icons8facebook.png',
//                     url:
//                         'https://www.facebook.com/profile.php?id=100062746260333',
//                   ),
//                   SocialIcon(
//                     iconPath: 'assets/icons8youtube.png',
//                     url:
//                         'https://youtube.com/@vedprakashabps?si=n1ijKLZfatj1YVLG',
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMessageForm(bool isMobile) {
//     bool isHovered = false;

//     return StatefulBuilder(
//       builder: (context, setState) {
//         return MouseRegion(
//           onEnter: (_) => setState(() => isHovered = true),
//           onExit: (_) => setState(() => isHovered = false),
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 300),
//             transform:
//                 isHovered
//                     ? Matrix4.translationValues(0, -8, 0)
//                     : Matrix4.identity(),
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color:
//                       isHovered
//                           ? Colors.deepPurple.withOpacity(0.3)
//                           : Colors.black.withOpacity(0.1),
//                   blurRadius: 30,
//                   spreadRadius: 8,
//                   offset: const Offset(0, 10),
//                 ),
//               ],
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Card(
//               elevation: 0,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: AutofillGroup(
//                 child: Padding(
//                   padding: EdgeInsets.all(isMobile ? 16 : 24),
//                   child: Column(
//                     children: [
//                       Text(
//                         "📨 Send Message",
//                         style: GoogleFonts.poppins(
//                           fontSize: isMobile ? 20 : 26,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.deepPurple.shade800,
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       contactField(
//                         "Your Name",
//                         nameController,
//                         hint: AutofillHints.name,
//                       ),
//                       const SizedBox(height: 10),
//                       contactField(
//                         "Your Email",
//                         emailController,
//                         hint: AutofillHints.email,
//                       ),
//                       const SizedBox(height: 10),
//                       contactField(
//                         "Your Mobile Number",
//                         phoneController,
//                         hint: AutofillHints.telephoneNumber,
//                       ),
//                       const SizedBox(height: 10),
//                       contactField(
//                         "How Can I Help You?",
//                         messageController,
//                         maxLines: 4,
//                       ),
//                       const SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: _submitForm,
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 32,
//                             vertical: 16,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           backgroundColor: Colors.deepPurple,
//                           foregroundColor: Colors.white,
//                         ),
//                         child: const Text(
//                           "Send Message",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // Widget contactField(
//   //   String hintText,
//   //   TextEditingController controller, {
//   //   int maxLines = 1,
//   //   String? hint,
//   // }) {
//   //   return TextField(
//   //     controller: controller,
//   //     maxLines: maxLines,
//   //     autofillHints: hint != null ? [hint] : null,
//   //     decoration: InputDecoration(
//   //       hintText: hintText,
//   //       filled: true,
//   //       fillColor: Colors.white,
//   //       enabledBorder: OutlineInputBorder(
//   //         borderRadius: BorderRadius.circular(12),
//   //         borderSide: BorderSide(color: Colors.deepPurple.shade300),
//   //       ),
//   //       focusedBorder: OutlineInputBorder(
//   //         borderRadius: BorderRadius.circular(12),
//   //         borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
//   //       ),
//   //       contentPadding: const EdgeInsets.symmetric(
//   //         horizontal: 16,
//   //         vertical: 14,
//   //       ),
//   //     ),
//   //     keyboardType:
//   //         maxLines == 1
//   //             ? (hint == AutofillHints.email
//   //                 ? TextInputType.emailAddress
//   //                 : (hint == AutofillHints.telephoneNumber
//   //                     ? TextInputType.phone
//   //                     : TextInputType.text))
//   //             : TextInputType.multiline,
//   //     textInputAction: TextInputAction.next,
//   //   );
//   // }
//   Widget contactField(
//     String hintText,
//     TextEditingController controller, {
//     int maxLines = 1,
//     String? hint,
//     bool isMobile = false, // Default value provided, no longer required
//   }) {
//     return TextField(
//       controller: controller,
//       maxLines: maxLines,
//       autofillHints: hint != null ? [hint] : null,
//       style: TextStyle(fontSize: isMobile ? 14 : 16, color: Colors.black87),
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: TextStyle(fontSize: isMobile ? 10 : 16, color: Colors.grey),
//         filled: true,
//         fillColor: Colors.white,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.deepPurple.shade300),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
//         ),
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 16,
//           vertical: 14,
//         ),
//       ),
//       keyboardType:
//           maxLines == 1
//               ? (hint == AutofillHints.email
//                   ? TextInputType.emailAddress
//                   : (hint == AutofillHints.telephoneNumber
//                       ? TextInputType.phone
//                       : TextInputType.text))
//               : TextInputType.multiline,
//       textInputAction: TextInputAction.next,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vedprakashportfolio/social_icon.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeIn;
  late Animation<Offset> _slideAnimation;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _fadeIn = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();
    final message = messageController.text.trim();

    if (name.isEmpty || email.isEmpty || message.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill out all required fields"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      await FirebaseFirestore.instance.collection('contactMessages').add({
        'name': name,
        'email': email,
        'phone': phone,
        'message': message,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Thanks for reaching out! I'll connect with you 😊"),
          backgroundColor: Colors.deepPurple,
        ),
      );

      nameController.clear();
      emailController.clear();
      phoneController.clear();
      messageController.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Something went wrong! Try again later."),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 700;

    return FadeTransition(
      opacity: _fadeIn,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? 40 : 60,
                  horizontal: isMobile ? 16 : 40,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFe0c3fc), Color(0xFF8ec5fc)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1200),
                    child:
                        isMobile
                            ? Column(
                              children: [
                                _buildContactInfo(isMobile),
                                const SizedBox(height: 40),
                                _buildMessageForm(isMobile),
                              ],
                            )
                            : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: _buildContactInfo(isMobile)),
                                const SizedBox(width: 40),
                                Expanded(child: _buildMessageForm(isMobile)),
                              ],
                            ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                bottom: 10,
                child: Text(
                  'Copyright © 2025 VED PRAKASH. All Rights Reserved.',
                  style: GoogleFonts.openSans(
                    fontSize: isMobile ? 10 : 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContactInfo(bool isMobile) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 800),
      tween: Tween<double>(begin: 0.8, end: 1.0),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Transform.scale(scale: value, child: child);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback:
                (bounds) => const LinearGradient(
                  colors: [Colors.deepPurple, Colors.pink],
                ).createShader(bounds),
            child: Text(
              "📬 Contact Me",
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 22 : 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Have an exciting project idea or collaboration in mind? \nFeel free to drop a message — I'll get back to you shortly! Let's build something amazing together with passion and precision.",
            style: GoogleFonts.openSans(
              fontSize: isMobile ? 12 : 16,
              height: 1.7,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "📱 Mobile: +91 9472795244",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              fontSize: isMobile ? 12 : 15,
            ),
          ),
          Text(
            "✉️ Email: vedprakashabps@gmail.com",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              fontSize: isMobile ? 12 : 15,
            ),
          ),
          const SizedBox(height: 20),
          SlideTransition(
            position: _slideAnimation,
            child: FadeTransition(
              opacity: _fadeIn,
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  SocialIcon(
                    iconPath: 'assets/icons8instagram.png',
                    url: 'https://www.instagram.com/vedprakashabpsgmailcom/',
                  ),
                  SocialIcon(
                    iconPath: 'assets/icons8-twitter-64.png',
                    url: 'https://twitter.com/vedprak43821488',
                  ),
                  SocialIcon(
                    iconPath: 'assets/icons8facebook.png',
                    url:
                        'https://www.facebook.com/profile.php?id=100062746260333',
                  ),
                  SocialIcon(
                    iconPath: 'assets/icons8youtube.png',
                    url:
                        'https://youtube.com/@vedprakashabps?si=n1ijKLZfatj1YVLG',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageForm(bool isMobile) {
    bool isHovered = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform:
                isHovered
                    ? Matrix4.translationValues(0, -8, 0)
                    : Matrix4.identity(),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:
                      isHovered
                          ? Colors.deepPurple.withOpacity(0.3)
                          : Colors.black.withOpacity(0.1),
                  blurRadius: 30,
                  spreadRadius: 8,
                  offset: const Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: AutofillGroup(
                child: Padding(
                  padding: EdgeInsets.all(isMobile ? 16 : 24),
                  child: Column(
                    children: [
                      Text(
                        "📨 Send Message",
                        style: GoogleFonts.poppins(
                          fontSize: isMobile ? 20 : 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple.shade800,
                        ),
                      ),
                      const SizedBox(height: 16),
                      contactField(
                        "Your Name",
                        nameController,
                        hint: AutofillHints.name,
                      ),
                      const SizedBox(height: 10),
                      contactField(
                        "Your Email",
                        emailController,
                        hint: AutofillHints.email,
                      ),
                      const SizedBox(height: 10),
                      contactField(
                        "Your Mobile Number",
                        phoneController,
                        hint: AutofillHints.telephoneNumber,
                      ),
                      const SizedBox(height: 10),
                      contactField(
                        "How Can I Help You?",
                        messageController,
                        maxLines: 4,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          disabledBackgroundColor: Colors.deepPurple
                              .withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          minimumSize: const Size(double.infinity, 45),
                        ),
                        onPressed: isLoading ? null : _submitForm,
                        child:
                            isLoading
                                ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white,
                                    ),
                                  ),
                                )
                                : const Text(
                                  "Send",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget contactField(
    String hintText,
    TextEditingController controller, {
    int maxLines = 1,
    String? hint,
    bool isMobile = false,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      autofillHints: hint != null ? [hint] : null,
      style: TextStyle(fontSize: isMobile ? 14 : 16, color: Colors.black87),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: isMobile ? 10 : 16, color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      keyboardType:
          maxLines == 1
              ? (hint == AutofillHints.email
                  ? TextInputType.emailAddress
                  : (hint == AutofillHints.telephoneNumber
                      ? TextInputType.phone
                      : TextInputType.text))
              : TextInputType.multiline,
      textInputAction: TextInputAction.next,
    );
  }
}
