// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:vedprakashportfolio/resume/download_helper_stub.dart';
// import 'dart:typed_data';

// class HomeScreen extends StatelessWidget {
//   final DownloadHelper downloadHelper = getDownloadHelper();

//   Future<void> downloadResume() async {
//     final data = await rootBundle.load('assets/Resume.pdf');
//     await downloadHelper.downloadFile(
//       data.buffer.asUint8List(),
//       'Ved_Prakash_Resume.pdf',
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Ved Prakash Portfolio")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: downloadResume,
//           child: Text("Download Resume"),
//         ),
//       ),
//     );
//   }
// }
