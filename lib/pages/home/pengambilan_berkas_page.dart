import 'package:flutter/material.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_stapper.dart';
import 'package:flutter_legalisisr_ijasah_unhas/theme.dart';

class PengambilanBerkasPage extends StatefulWidget {
  const PengambilanBerkasPage({super.key});

  @override
  State<PengambilanBerkasPage> createState() => _PengambilanBerkasPageState();
}

class _PengambilanBerkasPageState extends State<PengambilanBerkasPage> {
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
                      currentStep: 3,
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
      return Padding(
        padding: EdgeInsets.only(top: 32.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selamat!',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff158702),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Berkas anda telah berhasil di legalisir',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 290,
                child: Text(
                  'Mohon untuk melakukan pengambilan berkas fisik sesuai jadwal berikut.',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      );
    }

    //Widget cardFileRetrieval
    Widget cardFileRetrieval() {
      return Container(
        height: 160,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffd9daf6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Tanggal:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '12 September 2023',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Alamat:',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 245,
              child: Text(
                'Jl. Perintis Kemerdekaan No.KM.10, Tamalanrea Indah, Makassar',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    }

    //Widget contentText
    Widget footerText() {
      return Padding(
        padding: EdgeInsets.only(top: 25.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 290,
                child: Text(
                  'Batas waktu pengambilan berkas paling lambat 1 bulan dari waktu yang di tetapkan. Jika melewati batas waktu yang ditetapkan,kami tidak bisa menjamin berkas anda masih tersedia.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff4245d1),
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 124,
              ),
              Text(
                'Pengajuan Ulang?',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xff4245d1),
                ),
              ),
            ],
          ),
        ),
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
              contentText(),
              cardFileRetrieval(),
              footerText(),
            ],
          ),
        ),
      ),
    );
  }
}
