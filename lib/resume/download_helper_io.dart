// import 'dart:typed_data';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:open_file/open_file.dart';

// import 'download_helper_stub.dart';

// class IODownloadHelper extends DownloadHelper {
//   @override
//   Future<void> downloadFile(Uint8List data, String fileName) async {
//     final directory = await getApplicationDocumentsDirectory();
//     final file = File('${directory.path}/$fileName');
//     await file.writeAsBytes(data);
//     await OpenFile.open(file.path);
//   }
// }

// DownloadHelper getDownloadHelper() => IODownloadHelper();
