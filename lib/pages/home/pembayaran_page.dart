import 'package:flutter/material.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_button.dart';
import 'package:flutter_legalisisr_ijasah_unhas/pages/widgets/custom_stapper.dart';
import 'package:flutter_legalisisr_ijasah_unhas/theme.dart';
import 'package:get/get.dart';

class PembayaranPage extends StatefulWidget {
  const PembayaranPage({super.key});

  @override
  State<PembayaranPage> createState() => _PembayaranPageState();
}

class _PembayaranPageState extends State<PembayaranPage> {
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
                      currentStep: 1,
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
              'Pembayaran',
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
                'Mohon untuk melakukan pembayaran agar proses legalisir dapat di proses.',
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

    //Widget cardTotalPayment
    Widget cardTotalPayment() {
      return Container(
        height: 100,
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
              'Total:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Rp55.000',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
    }

    //Widget titlePayment
    Widget titlePayment() {
      return Text(
        'Metode Pembayaran',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      );
    }

    //Widget paymentMethod
    Widget paymentMethod() {
      return Column(
        children: [
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.black),
            title: Text('Transfer Bank'),
            trailing: Icon(Icons.arrow_drop_down, color: Colors.black),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.black),
            title: Text('Kartu Kredit/Debit'),
            trailing: Icon(Icons.arrow_drop_down, color: Colors.black),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.black),
            title: Text('Pembayaran Lainnya'),
            trailing: Icon(Icons.arrow_drop_down, color: Colors.black),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
          ),
        ],
      );
    }

    //Widget Button
    Widget button() {
      return CustomButton(
        label: 'Kirim Bukti Pembayaran',
        onPressed: () {
          Get.toNamed(
            '/verifikasi',
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
              cardTotalPayment(),
              titlePayment(),
              paymentMethod(),
              SizedBox(height: 80.0),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
