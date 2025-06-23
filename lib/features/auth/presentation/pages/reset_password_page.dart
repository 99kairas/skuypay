import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/widgets/register_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Kata Sandi",
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
              text: "Masukkan Kata Sandi Baru",
              hintText: "Kata Sandi",
              isPassword: true,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            RegisterFormField(
              text: "Ketik Ulang Kata Sandi Anda",
              hintText: "Kata Sandi",
              isPassword: true,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            Spacer(),
            ButtonWidget(
              context: context,
              text: "Lanjutkan",
              onPressed: () {
                showSuccessDialog(context, "Yey! Kata Sandi Berhasil Diubah");
              },
            ),
          ],
        ),
      ),
    );
  }

  void showSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(24.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 30,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Berhasil",
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                message,
                textAlign: TextAlign.center,
                style: greyTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
