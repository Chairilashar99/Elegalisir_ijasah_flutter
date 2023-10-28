import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_button.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_choosefile.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_stapper.dart';
import 'package:flutter_legalisisr_ijasah_unhas/theme.dart';
import 'package:get/get.dart';

class PengajuanBerkasPage extends StatefulWidget {
  const PengajuanBerkasPage({super.key});

  @override
  State<PengajuanBerkasPage> createState() => _PengajuanBerkasPageState();
}

class _PengajuanBerkasPageState extends State<PengajuanBerkasPage> {
  String? selectedFileName;
  @override
  Widget build(BuildContext context) {
    //Widget headerAndStapper
    PreferredSizeWidget headerAppBar() {
      return PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/background_appbar.png',
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Progress Legalisir Ijazah',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: CustomStepper(
                      currentStep: 0,
                      steps: [
                        'Pengajuan Berkas',
                        'Pembayaran',
                        'Legalisir',
                        'Pengambilan Berkas',
                      ],
                      onStepTapped: (step) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    //Widget titleText
    Widget titleText() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pengajuan Berkas',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              width: 250,
              child: Text(
                'Mohon mengupload berkas yang ditentukan untuk melegalisir Ijazah.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      );
    }

    //Widget chooseFileTitle
    Widget chooseFileTitle() {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
        child: Text(
          'Ijazah Asli',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      );
    }

    //Widget chooseFile
    Widget chooseFile() {
      return CustomChooseFileButton();
    }

    //Widget numberOfPdfs
    Widget numberOfPdfs() {
      int numberOfPdfs = 1;
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Jumlah salinan legalisir ijazah:",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9DAF6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff4245d1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              if (numberOfPdfs > 1) numberOfPdfs--;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '$numberOfPdfs',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
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
                        child: IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              numberOfPdfs++;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    //Widget Button
    Widget button() {
      return CustomButton(
        label: 'Mengajukan',
        onPressed: () {
          Get.toNamed(
            '/pembayaran',
          );
        },
        textStyle: buttonTextStyle.copyWith(fontWeight: bold),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: headerAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              titleText(),
              chooseFileTitle(),
              chooseFile(),
              numberOfPdfs(),
              Container(height: MediaQuery.of(context).size.height - 530),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
