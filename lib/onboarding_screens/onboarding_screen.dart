import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pranjal_intern2/login_screen/sign_up_screen.dart';
import 'package:pranjal_intern2/onboarding_screens/build_page.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            BuildPage(
              heading: 'Find Trusted Seller',
              imgLoc: 'assets/images/onboarding_1.png',
              subTitle:
                  'contrary to lorem porem donsdkjf ksadfj askdfj nakdjf nadskfj nadskfj nasdkfj n',
            ),
            BuildPage(
              heading: "Choose Best Machines",
                imgLoc: "assets/images/onboarding_2.png",
              subTitle:
                  'contrary to lorem porem donsdkjf ksadfj askdfj nakdjf nadskfj nadskfj nasdkfj n',
            ),
            BuildPage(
              heading: "Easy Appointments",
              imgLoc: "assets/images/onboarding_3.png",
              subTitle:
                  "contrary aksdjf kjn ksad jndk jnasdk jnadsk jn kadsjfn kasjdfn kasdjfn ksadj nsdf ",
            ),
          ],
        ),
        bottomSheet: (isLastPage)
            ? Container(
          color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 90,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: CustomButton(
                        width: width,
                         text: 'Get Started', onClick: () {  },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            : Container(
                color: Colors.white,
                height: 100,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: CustomButton(
                          width: width,
                          text: 'Next', onClick: () {
                          controller.nextPage(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOut);
                        },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    InkWell(
                      onTap: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text("Skip",
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 14,
                        ),),
                    ),
                    SizedBox(
                      height: 10,

                    ),
                  ],
                ),
              ));
  }
}
