import 'package:flutter/material.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/auth/sign_in_page.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/auth/sign_up_page.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/home/pembayaran_page.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/home/pengajuan_berkas_page.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/home/pengambilan_berkas_page.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/home/verifikasi_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/sign-up",
      debugShowCheckedModeBanner: false,
      routes: {
        '/sign-up': (context) => const SignUpPage(),
        '/sign-in': (context) => const SignInPage(),
        '/pengajuan-berkas': (context) => const PengajuanBerkasPage(),
        '/pembayaran': (context) => const PembayaranPage(),
        '/verifikasi': (context) => const VerifikasiPage(),
        '/pengambilan-berkas': (context) => const PengambilanBerkasPage(),
      },
    );
  }
}
