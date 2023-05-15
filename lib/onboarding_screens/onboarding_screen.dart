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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (isLastPage)
                ? SizedBox(
                    height: 90,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(SignUpScreen());
                          },
                          child: CommonButton(
                            width: width,
                            buttonText: "Get Started",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: 90,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            controller.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut);
                          },
                          child: CommonButton(
                            width: width,
                            buttonText: "Next",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            controller.jumpToPage(2);
                          },
                          child: Text("Skip"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
          ],
        ));
  }
}
