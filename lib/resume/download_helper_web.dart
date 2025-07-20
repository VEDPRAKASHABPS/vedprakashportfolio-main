// import 'dart:typed_data';
// import 'dart:html' as html;
// import 'download_helper_stub.dart';

// class WebDownloadHelper extends DownloadHelper {
//   @override
//   Future<void> downloadFile(Uint8List data, String fileName) async {
//     final blob = html.Blob([data]);
//     final url = html.Url.createObjectUrlFromBlob(blob);
//     final anchor =
//         html.AnchorElement(href: url)
//           ..setAttribute('download', fileName)
//           ..click();
//     html.Url.revokeObjectUrl(url);
//   }
// }

// DownloadHelper getDownloadHelper() => WebDownloadHelper();
