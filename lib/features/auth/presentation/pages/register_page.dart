import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/pages/register_success_page.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/widgets/register_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Daftar",
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 70,
                    height: 105,
                    child: Image(
                      image: AssetImage(
                        "assets/images/img_skuypay.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Skuypay",
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lengkapi identitas Anda disini.",
                  style: blackTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            RegisterFormField(
              text: "Nama*",
              hintText: "Ilham",
            ),
            RegisterFormField(
              text: "E-mail",
              hintText: "skuypay@gmail.com",
            ),
            RegisterFormField(
              text: "No. HP",
              hintText: "0812345678",
            ),
            RegisterFormField(
              text: "Kata Sandi*",
              hintText: "************",
              isPassword: true,
            ),
            RegisterFormField(
              text: "Ketik Ulang Kata Sandi*",
              hintText: "*************",
              isPassword: true,
            ),
            const SizedBox(
              height: 55,
            ),
            ButtonWidget(
              context: context,
              text: "Daftar",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return RegisterSuccessPage();
                  },
                ));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sudah punya akun?",
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Masuk",
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
