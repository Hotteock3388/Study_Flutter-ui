import 'package:flutter/material.dart';
import 'DataClass.dart';

class SingletonOne {
  SingletonOne._privateConstructor();

  static final SingletonOne _instance = SingletonOne._privateConstructor();

  factory SingletonOne() {
    return _instance;
  }

  void printHello() {
    print("Fucking Hello");
  }
}

class BrandDataListManager {
  BrandDataListManager._privateConstructor();
  static final BrandDataListManager _instance =
      BrandDataListManager._privateConstructor();

  static final List<BrandData> brandDataList = brandDataListInit();

  factory BrandDataListManager() {
    return _instance;
  }

  List<BrandData> getBrandDataList() {
    return brandDataList;
  }

  static brandDataListInit() {
    List<BrandData> brandDataList = new List<BrandData>();

    brandDataList.add(BrandData(
        "images/qmark.png",
        "BHC",
        "맵부심있는 얼리어닭터들을 위한 뭐시기 출시!",
        "",
        Colors.deepOrange[500],
        Colors.deepOrange[300]));
    brandDataList.add(BrandData("images/qmark.png", "BBQ", "1등 브랜드가 만드는 1등 치킨",
        "네고왕으로 탄생된 BBQ 신메뉴", Colors.red[700], Colors.red[300]));
    brandDataList.add(BrandData(
        "images/qmark.png",
        "코리엔탈깻잎두마리치킨",
        "\"코리엔탈\"이 없으면 깻잎두마리치킨 \n아닙니다!",
        "매일 전 메뉴 2천원 할인 이벤트!",
        Colors.lightBlue[500],
        Colors.lightBlue[300]));
    return brandDataList;
  }
}
