import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:Sujaan_MecholApp/widgets/carousel.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List imagelist = [
    'assets/images/vehical1.png',
    'assets/images/poster.png',
    'assets/images/vehical1.png',
    'assets/images/poster.png',
  ];
  bool _isExpanded = false;
  bool _isExpanded2 = false;

  List<String> left = ["Type:", "Category :", "Age In Year:", "Fuel Type:","Phase: ","Speed :","Published On :","Status :","Manufacturer :","Condition :","Voltage : ","Frequency :","Seller view :","Generator Current Location :"];
  List<String> right = ["Rental Provider", "30-50KVA", "1 yr", "Diesel","3","1500","2023-01-21","Operational","Eicher","Working","415","50","Negociable","Jaipur"];


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0067a2),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Machine Details',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                Stack(
                  children:[ CustomCarousel(
                      imagelist[0],
                      imagelist[1],
                      imagelist[2],
                      imagelist[3],
                      height * 0.26
                  ),
                    Positioned(
                        top:15,
                        right: 15,
                        child: Icon(Icons.favorite,color: Colors.white,))
            ]
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30 kva Rental",
                      style: TextStyle(
                        color: Color(0xff0582ca),
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "₹ 35,000",
                      style: TextStyle(
                        color: Color(0xff0582ca),
                        fontSize: 22,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 17,
                    ),
                    Text(
                      "Mumbai",
                      style: TextStyle(
                        color: Color(0xff677294),
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Machine ID: RTG#00026",
                    style: TextStyle(
                      color: Color(0xff858ea9),
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  padding: EdgeInsets.all(10),
                  width: width,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "30 kva rental in Navi Mumbai",
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AnimatedContainer(
                  padding: EdgeInsets.all(15),
                  width: width,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0f000000),
                        blurRadius: 22,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  duration: Duration(milliseconds: 300),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Additional Info',
                        style:  TextStyle(
                          color: Color(0xff222222),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: _isExpanded?440:90,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: _isExpanded == true ? 14 : 3,
                            itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.only(top: 8,bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  left[index],
                                  style: TextStyle(
                                    color: Color(0xff676767),
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  right[index],
                                  style: TextStyle(
                                    color: Color(0xff676767),
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      Center(
                        child: TextButton(onPressed: (){
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                            child: Text(
                          _isExpanded?"See Less":"See more",
                          style: TextStyle(
                            color: Color(0xff0582ca),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                      )

                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Seller",
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    )),
                Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/crown.png',
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text(
                        "Rakesh Dhumal",
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Machine Location",
                      style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    )),

                //map//
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image.asset("assets/images/MapImage.png"),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                _isExpanded2 == true?
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Seller: Rakesh Dhumal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Contact No.: +91-9876543210",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children:[
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff0582ca),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Image.asset("assets/images/ChatIconOutline.png",height: 16,),
                                  SizedBox(width: 10),
                                  Text(
                                    "Chat",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 17),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff0ebe7e),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Icon(Icons.call,color: Colors.white,size: 16,),
                                  SizedBox(width: 10),
                                  Text(
                                    "Call",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: "Lexend",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      height: 122,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Text(
                            "Rate Us",
                            style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: Color(0xffffd833),size: 30,),
                              SizedBox(width: 18,),
                              Icon(Icons.star,color: Color(0xffffd833),size: 30,),
                              SizedBox(width: 18,),
                              Icon(Icons.star,color: Color(0xffffd833),size: 30,),
                              SizedBox(width: 18,),
                              Icon(Icons.star,color: Color(0xffffd833),size: 30,),
                              SizedBox(width: 18,),
                              Icon(Icons.star,color: Color(0xffffd833),size: 30,),
                              SizedBox(width: 18,),

                            ],
                          ),
                          SizedBox()
                        ],
                      ),
                    )
                  ],
                )
                    :
                InkWell(
                  onTap: (){
                    setState(() {
                      _isExpanded2 = !_isExpanded2;
                    });
                  },
                  child: Container(
                    height: _isExpanded2 == true ? 0 : 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0ebe7e),
                    ),
                    child: Center(
                      child: Text(
                        "Show Interest",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(color: Colors.black,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Related to your search',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                vehical_container(
                    width: width * 0.9,
                    image: 'assets/images/vehical1.png',
                    title: '400 KVA',
                    price: 'RS.5,00,00',
                  location: 'Mumbai',
                ),
                vehical_container(
                    width: width * 0.9,
                    image: 'assets/images/vehical1.png',
                    title: '400 KVA',
                    price: 'RS.5,00,00',
                  location: 'Mumbai',
                ),
                vehical_container(
                    width: width * 0.9,
                    image: 'assets/images/vehical1.png',
                    title: '400 KVA',
                    price: 'RS.5,00,00',
                  location: 'Mumbai',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class stars extends StatelessWidget {
  const stars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow,
      size: 35,
    );
  }
}

///// common widget//

class additionalInfo extends StatelessWidget {
  const additionalInfo({
    super.key,
    required this.title,
    required this.discription,
  });
  final String title;
  final String discription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            'Renatal provider',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
