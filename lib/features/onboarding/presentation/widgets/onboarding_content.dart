// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OnboardingContent {
  Widget image;
  String title;
  String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List contents = [
  OnboardingContent(
    image: Image.asset("assets/images/img_skuypay.png"),
    title: "SkuyPay",
    description:
        "SkuyPay memiliki lisensi dan diawasi oleh Otoritas Jasa Keuangan (OJK) dan merupakan anggota Lembaga Penjamin Simpanan (LPS).",
  ),
  OnboardingContent(
    image: Image.asset("assets/images/img_onboarding2.png"),
    title: "Teman yang memudahkan",
    description:
        "Sekarang Skuypay bisa menjadi teman\nanda dalam mengatur tagihan anda.",
  ),
  OnboardingContent(
    image: Image.asset("assets/images/img_onboarding3.png"),
    title: "Aman dan Terpercaya",
    description:
        "Skuypay sudah melakukan tahapan pengujian\nkeamanan oleh tim hacker internasional",
  ),
  OnboardingContent(
    image: Image.asset("assets/images/img_onboarding5.png"),
    title: "Kini semuanya dalam satu genggaman",
    description:
        "Lebih mudah dalam melakukan semuanya pembayaran serta aman dan terintegrasi",
  ),
];
