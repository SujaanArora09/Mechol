import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Tc extends StatefulWidget {
  const Tc({super.key});

  @override
  State<Tc> createState() => _TcState();
}

class _TcState extends State<Tc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Terms and conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Mechol!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'These terms and conditions outline the rules and regulations for the use of Mechol\'s Website, located at\nhttps://mechol.in/',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'By accessing this website we assume you accept these\n terms and conditions. Do not continue to use Mechol if\n you do not agree to take all of the terms and conditions\n stated on this page.',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The following terminology applies to these Terms and\n Conditions, Privacy Statement and Disclaimer Notice\n and all Agreements: "Client", "You" and "Your" refers to\n you, the person log on this website and compliant to\n the Company’s terms and conditions. "The Company",\n "Ourselves", "We", "Our" and "Us", refers to our Company.\n "Party", "Parties", or "Us", refers to both the Client and\n ourselves. All terms refer to the offer, acceptance and \nconsideration of payment necessary to undertake the\n process of our assistance to the Client in the most\n appropriate manner for the express purpose of\n meeting the Client’s needs in respect of provision of the\n Company’s stated services, in accordance with and\n subject to, prevailing law of Netherlands. Any use of the\n above terminology or other words in the singular, plural,\n capitalization and/or he/she or they, are taken as\n interchangeable and therefore as referring to same.',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Cookies',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'We employ the use of cookies. By accessing Mechol, you agreed to use cookies in agreement with the Mechol \'s Privacy Policy.\''),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies'),
              SizedBox(
                height: 10,
              ),
              Text(
                'License',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Unless otherwise stated, Mechol and/or its licensors own the intellectual property rights for all material on Mechol. All intellectual property rights are reserved. You may access this from Mechol for your own personal use subjected to restrictions set in these terms and conditions.'),
              SizedBox(
                height: 10,
              ),
              Text(
                'You must not:',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1. Republish material from Mechol',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '2. Sell, rent or sub-license material from Mechol',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '3. Reproduce, duplicate or copy material from Mechol',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '4.Redistribute content from Mechol.',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '5. By agreeing to grant such access, the Company does not obligate itself to maintain the course, or to maintain it in its present form.',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Free Terms and Conditions Generator.\n\nParts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Mechol does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Mechol, its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Mechol shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.\n\nMechol reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes a breach of these Terms and Conditions.',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'License',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;\n\nThe Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;\n\nThe Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy;\n\nThe Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You hereby grant Mechol a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
