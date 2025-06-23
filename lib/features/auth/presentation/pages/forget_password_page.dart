import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/pages/pin_page.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/widgets/register_widget.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          "Lupa Kata Sandi",
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            RegisterFormField(
              text: "Masukkan E-mail Anda",
              hintText: "skuypay@gmail.com",
            ),
            Spacer(),
            ButtonWidget(
              context: context,
              text: "Kirim",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PinPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
