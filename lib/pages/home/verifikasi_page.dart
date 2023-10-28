import 'package:flutter/material.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/home/pengambilan_berkas_page.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_choosefile.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_stapper.dart';
import 'package:flutter_legalisisr_ijasah_unhas/theme.dart';
import 'package:get/get.dart';

class VerifikasiPage extends StatefulWidget {
  const VerifikasiPage({super.key});

  @override
  State<VerifikasiPage> createState() => _VerifikasiPageState();
}

class _VerifikasiPageState extends State<VerifikasiPage> {
  bool isSuccess = true;
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
                      currentStep: 2,
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

    //Widget contentText
    Widget contentText() {
      if (isSuccess) {
        // Get.toNamed(
        //   '/pengambilan-berkas',
        // );
        if (isSuccess) {
          Future.delayed(Duration(seconds: 3), () {
            Get.off(PengambilanBerkasPage());
          });
        }
        return Padding(
          padding: EdgeInsets.only(top: 130.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Verifikasi Berkas',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Berkas anda sedang kami verifikasi',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 35.0),
                Icon(
                  Icons.insert_drive_file,
                  size: 93.0,
                  color: Color(0xff4245d1),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Mohon untuk menunggu informasi selanjutnya.',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 245,
                  child: Text(
                    'Untuk proses verifikasi akan memakan waktu kurang lebih 3 hari setelah proses pembayaran telah selesai.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff4245d1),
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        return Container(
          margin: EdgeInsets.only(top: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hasil Verifikasi Berkas',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                width: 270,
                child: Text(
                  'Terdapat berkas yang perlu anda tinjau kembali.Mohon untuk meninjau berkas anda sesuai kesalahan yang tercantum. ',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  'Ijazah Asli',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              CustomChooseFileButton(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFD9DAF6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.circle, size: 6, color: Colors.red),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Scan Ijazah keluar dari frame',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  'Transkrip Nilai',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              CustomChooseFileButton(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFD9DAF6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle, size: 6, color: Colors.red),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Mohon untuk mengesahkan Transkrip terlebih dahulu',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 6, color: Colors.red),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Terdapat nilai yang sulit di baca',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
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
        );
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: headerAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              contentText(),
            ],
          ),
        ),
      ),
    );
  }
}
