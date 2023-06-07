import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: "Privacy Policy",
        backButton: true,
        bellIcon: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'This privacy policy sets out how [App Name] collects, uses, and protects any personal information that you provide when you use this app. We are committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this app, you can be assured that it will only be used in accordance with this privacy statement.\n\nInformation We Collect:\nWe may collect the following information:\n- Name\n- Contact information including email address and phone number\n- Demographic information such as postcode, preferences, and interests\n- Other information relevant to customer surveys and/or offers\n\nWe require this information to understand your needs and provide you with a better service, and in particular, for the following reasons:\n- Internal record keeping.\n- We may use the information to improve our products and services.\n- We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided.\n- From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, or mail. We may use the information to customize the app according to your interests.\n\nSecurity:\nWe are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.\n\nHow We Use Cookies:\nA cookie is a small file which asks permission to be placed on your device\'s storage. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes, and dislikes by gathering and remembering information about your preferences.\n\nWe use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our app in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.\n\nOverall, cookies help us provide you with a better app, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your device or any information about you, other than the data you choose to share with us.\n\nLinks to Other Websites:\nOur app may contain links to other websites of interest. However, once you have used these links to leave our app, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.\n\nControlling Your Personal Information:\nYou may choose to restrict the collection or use of your personal information in the following ways:\n- Whenever you are asked to fill in a form on the app, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes.\n- If you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by contacting us.\n\nWe will not sell, distribute, or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.',
              style:  TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
