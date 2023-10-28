import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class CustomChooseFileButton extends StatefulWidget {
  @override
  _CustomChooseFileButtonState createState() => _CustomChooseFileButtonState();
}

class _CustomChooseFileButtonState extends State<CustomChooseFileButton> {
  String? selectedFilePath;

  Future<void> _pickPdfFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      setState(() {
        selectedFilePath = file.path;
      });
      print("File dipilih: ${file.path}");
    } else {
      print('Tidak ada file yang dipilih.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickPdfFile,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFD9DAF6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                child: Text(
                  selectedFilePath != null
                      ? selectedFilePath!.split('/').last
                      : 'Choose File',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff4245d1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Icon(Icons.close, color: Colors.white),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
