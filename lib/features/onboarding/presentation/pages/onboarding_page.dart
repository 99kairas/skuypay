import 'package:flutter/material.dart';
import 'package:payment_point_onlinebank/core/theme/font_style.dart';
import 'package:payment_point_onlinebank/features/onboarding/presentation/widgets/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return currentIndex != 0
              ? ListView(
                  children: [
                    SafeArea(
                      child: SizedBox(
                        width: double.infinity,
                        height: 360,
                        child: contents[index].image,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      contents[index].title,
                      textAlign: TextAlign.center,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        contents[index].description,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    if (currentIndex == 3) ...[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 320,
                              height: 60,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'Daftar',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sudah punya akun?',
                                style: blackTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Masuk',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ],
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 210,
                        child: contents[0].image,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[0].title,
                        style: primaryTextStyle.copyWith(
                          fontSize: 40,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      Text(
                        contents[0].description,
                        textAlign: TextAlign.center,
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: 30,
                            width: 32,
                            child: Image.asset(
                              'assets/images/img_ojk.png',
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: 30,
                            width: 32,
                            child: Image.asset(
                              'assets/images/img_perbankan.png',
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: 30,
                            width: 32,
                            child: Image.asset(
                              'assets/images/img_kemenkeu.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: currentIndex == index + 1? 18 : 14,
      width: currentIndex == index + 1 ? 18 : 14,
      margin: const EdgeInsets.only(right: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index + 1 ? primaryColor : greyColor,
      ),
    );
  }
}
