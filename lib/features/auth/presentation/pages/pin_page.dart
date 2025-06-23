import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/pages/reset_password_page.dart';
import 'package:payment_point_onlinebank/features/auth/presentation/widgets/register_widget.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kode PIN",
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 46,
                  width: 46,
                  child: Image.asset("assets/images/img_pin.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Nah !! Sekarang Yuk masukin PIN kamu..",
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    boxPIN(),
                    boxPIN(),
                    boxPIN(),
                    boxPIN(),
                    boxPIN(),
                  ],
                ),
                Spacer(),
                ButtonWidget(
                  context: context,
                  text: "Kirim",
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPasswordPage()),
                        (_) => false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget boxPIN() {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      width: 50,
      height: 50,
      child: TextFormField(
        // focusNode: FocusNode(),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        maxLines: 1,
        decoration: InputDecoration(
          counterText: "",
          hintText: "-",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
