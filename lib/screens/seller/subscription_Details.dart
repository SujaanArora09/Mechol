import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/screens/subscription_screen.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class SubscriptionDetails extends StatefulWidget {
  const SubscriptionDetails({Key? key}) : super(key: key);

  @override
  State<SubscriptionDetails> createState() => _SubscriptionDetailsState();
}

class _SubscriptionDetailsState extends State<SubscriptionDetails> {
  int _currentIndex = 0;
  List<String> listing = ["150", "Unlimited", "1", "Unlimited"];
  List<String> duration = ["12 months", "12 months", "4 months", "1 month"];
  List<String> images = ["600", "Unlimited", "5", "Unlimited"];
  List<String> adBanner = ["No", "Yes", "No", "No"];
  List<String> salesCommission = ["No", "No", "NA", "NA"];
  List<String> verifiedSeller = ["No", "Yes", "No", "NA"];
  List<String> auction = ["No", "No", "NA", "NA"];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: GradientAppBar(
        title: "Subscription",
        backButton: false,
        bellIcon: false,
      ),
      backgroundColor: Color(0xfff5f5f5),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  SubscriptionContainer(width: width,amount: "3000",topImage: Image.asset("assets/images/StandardSImage.png",height: 52,),),
                  SubscriptionContainer(width: width , amount: "10000",topImage:Image.asset("assets/images/PremiumSImage.png",height: 43,),),
                  SubscriptionContainer(width: width , amount: "500",topImage: Image.asset("assets/images/IndivisualSImage.png",height: 43,),),
                  SubscriptionContainer(width: width , amount: "999",topImage: Image.asset("assets/images/BiginnerSImage.png",height: 51,),),
                ],
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: false,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              DotsIndicator(
                dotsCount: 4, // Replace 5 with the actual number of carousel items
                position: _currentIndex,
                decorator: DotsDecorator(
                  color: Colors.grey,
                  activeColor: Color(0xff0582ca),
                  size: Size(7,7),
                  activeSize: Size(7,7)
                ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  SizedBox(
                    height: 35,
                    child: Stack(
                      children: [
                        Positioned(
                          top:width*0.04,
                          left: height*0.06,
                          child: Text(
                            "Benefits",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.25,
                          child: Text(
                            "Individual",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6,),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Listing",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            listing[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Duration",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            duration[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Images",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            images[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Response",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            "Yes",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Ad Banner",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            adBanner[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Sales Commission",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            salesCommission[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Verified Seller",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            verifiedSeller[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Meeting Help",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            "Yes",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          top:width*0.04,
                          left: height*0.07,
                          child: Text(
                            "Auction",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          top:width*0.04,
                          left: height*0.265,
                          child: Text(
                            auction[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CustomButton(text: "Subscribe", onClick: (){
                Get.to(SubscriptionScreen());
              })
            ],
          ),
        ),
      ),
    );
  }
}


class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({
    super.key,
    required this.width,
    required this.amount,
    required this.topImage,
  });

  final double width;
  final String amount;
  final Image topImage;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0x0f000000),
              blurRadius: 22,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            topImage,
            Column(
              children: [
                Text(
                  "Standard",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Reseller or Rental Provide",
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Text(
              "Rs.$amount",
              style: TextStyle(
                color: Color(0xff0582ca),
                fontSize: 25,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
    );
  }
}
