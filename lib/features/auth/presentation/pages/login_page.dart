import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/pages/forget_password_page.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/widgets/register_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
      body: ListView(
        padding: const EdgeInsets.all(20),
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
            ],
          ),
          RegisterFormField(
            text: "E-mail",
            hintText: "skuypay@gmail.com",
          ),
          RegisterFormField(
            text: "Kata Sandi",
            hintText: "*********",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPasswordPage(),
                    ),
                  );
                },
                child: Text(
                  "Lupa Kata Sandi?",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 220,
          ),
          Column(
            children: [
              ButtonWidget(
                context: context,
                text: "Masuk",
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return RegisterSuccessPage();
                  //   },
                  // ));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum Punya Akun?",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                    ),
                    child: Text(
                      "Daftar",
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
        ],
      ),
    );
  }
}
