// Exercise 2

import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var file = File(savePath);

    await file.writeAsBytes(response.bodyBytes);

    print('File downloaded successfully!');
  } else {
    print('Failed to download file: ${response.statusCode}');
  }
}

void main() async {

  String fileUrl = 'https://example.com/samplefile.txt';


  String savePath = 'samplefile.txt';

  try {

    await downloadFile(fileUrl, savePath);
  } catch (e) {
    print('Error downloading file: $e');
  }
}