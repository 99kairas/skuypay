import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/pages/register_success_page.dart';

class RegisterFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool isPassword;
  final Widget suffixIcon;
  const RegisterFormField({
    super.key,
    required this.text,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon = const Text(""),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: blackTextStyle.copyWith(
            fontSize: 12,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

Widget ButtonWidget({
  required BuildContext context,
  required String text,
  required Function() onPressed,
}) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: whiteTextStyle.copyWith(
          fontSize: 14,
          fontWeight: regular,
        ),
      ),
      onPressed: onPressed,
    ),
  );
}
