import 'package:flutter/material.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_button.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_input.dart';
import 'package:flutter_legalisisr_ijasah_unhas/theme.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    //Widget header
    PreferredSizeWidget headerAppBar() {
      return PreferredSize(
        preferredSize: Size.fromHeight(100.0),
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
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo_unhas.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UNIVERSITAS HASANUDIN',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'FAKULTAS KEDOKTERAN',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    //Widget TitleText
    Widget titleText() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MASUK',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Layanan LEGALISIR IJAZAH',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              width: 200,
              child: Text(
                'Mengesahkan Ijazah Anda dengan Cepat dan Mudah.',
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

    //Widget formInput
    Widget formInput() {
      return Column(
        children: [
          CustomInputField(
            iconData: Icons.phone,
            labelText: 'Nomor WhatsApp',
            hintText: '+6281xxxxxx',
          ),
          CustomInputField(
            iconData: Icons.lock,
            labelText: 'Kata Sandi',
            hintText: 'Kata Sandi Anda',
            isPassword: true,
          ),
        ],
      );
    }

    //Widget TextFooter
    Widget textFooter() {
      return Column(
        children: [
          Text(
            'Belum punya akun?',
            style: TextStyle(
                color: Color(0xff4245d1), fontSize: 11, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    //Widget Button
    Widget button() {
      return CustomButton(
        label: 'Masuk',
        onPressed: () {
          Get.toNamed(
            '/pengajuan-berkas',
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
              formInput(),
              Container(height: MediaQuery.of(context).size.height - 560),
              textFooter(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
