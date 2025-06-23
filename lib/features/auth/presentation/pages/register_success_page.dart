import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/pages/login_page.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/widgets/register_widget.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30), // Padding diubah sedikit untuk estetika
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Konten ini akan berada di tengah ruang yang tersedia
                children: [
                  Image.asset(
                    "assets/images/img_daftar.png",
                    width: 220,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Cihuyy ! Selamat",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Kamu telah berhasil mendaftar",
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center, // Menambahkan perataan teks
                  ),
                ],
              ),
            ),
            ButtonWidget(
              context: context,
              text: "Lanjutkan",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (_) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
