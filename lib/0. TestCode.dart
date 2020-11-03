import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:free_write/DataClass.dart';
import 'package:free_write/SingleTon.dart';

class WrapVisit extends StatefulWidget {
  WrapVisitState createState() => WrapVisitState();
}

class WrapVisitState extends State<WrapVisit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: new Text(
            "터어ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ치이ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ"),
        onTap: () {
          BrandData BB = BrandDataListManager().getBrandDataList()[1];
          print("");
          // print("${User.getInstance().name} , ${User.getInstance().age}");
          // print(
          //     "${User.getInstance(name: "호떡", age: 24).name}, ${User.getInstance().age}");
          // print("${User.getInstance().name} , ${User.getInstance().age}");
        },
      ),
    );
  }
}

class BrandBox extends StatelessWidget {
  // String imgLink, name, explain, bottomText;
  // Color boxColor, chipColor;
  BrandData brandData;

  BrandBox(this.brandData);
  //this.imgLink, this.name, this.explain, this.bottomText, this.boxColor, this.chipColor

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(7),
        child: Container(
          child: Stack(
            children: [
              Card(
                color: brandData.boxColor,
                //모서리가 둥그란 Card안의 내용물이 overflow 해서 Card의 모서리가 각지지 않게
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                margin: EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Container(
                      width: 281,
                      height: 187,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            brandData.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          Text(
                            brandData.explain,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(height: 0),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 15,
                      child: Row(
                        children: [
                          Chip(
                            label: Text(
                              "쿠폰",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: brandData.chipColor,
                          ),
                          SizedBox(width: 8),
                          Chip(
                            label: Text(
                              "신메뉴",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: brandData.chipColor,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 38,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Icon(Icons.card_giftcard),
                              SizedBox(width: 8),
                              Text(
                                brandData.bottomText,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Image.asset(
                  brandData.imgLink,
                  height: 60,
                ),
              ),
            ],
          ),
        ));
  }
}

class FloatingText extends StatelessWidget {
  String fText, imgLink;
  FloatingText(this.fText, this.imgLink);
  Color clearWhite = Color(0x4DFFFFFF);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: Card(
        color: clearWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 5,
            ),
            Image.asset(
              imgLink,
              width: 15,
              height: 15,
            ),
            Text(
              "  $fText   ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                //fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
