import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ps5mobile/components/CustomNavBar.dart';
import 'package:ps5mobile/components/RecommnededTiles.dart';
import 'package:ps5mobile/components/ScreenSize.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ps5mobile/components/product_card.dart';
import 'package:ps5mobile/components/recommendedSec.dart';
import 'package:ps5mobile/models/PopProds.dart';

import '../components/CatagoryTiles.dart';
import '../components/IconButtWCounter.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: SizeConfig.screenWidth * 0.6,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFF979797).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search Game",
                            prefixIcon: const Icon(Icons.search_outlined),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20),
                              vertical: getProportionateScreenWidth(9),
                            )),
                      ),
                    ), //searchField
                    ButtWithCount(
                      svgScr: "assets/icons/Cart Icon.svg",
                      numOfItems: 0,
                      press: () {},
                    ),
                    ButtWithCount(
                      svgScr: "assets/icons/Bell.svg",
                      numOfItems: 3,
                      press: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(20)),
                width: double.infinity,
                //height: 90,
                decoration: BoxDecoration(
                  color: const Color(0xffe28743),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text.rich(TextSpan(
                    text: "Gamers Month Suprise\n",
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "Discount: 20% Off",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold))
                    ])),
              ), //DiscountBanner
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Catogaries(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),

              SectionTile(
                text: "Recommended for you",
                press: () {},
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendedList(
                      name: "God Of War",
                      img: 'assets/images/gow.jpg',
                      desc: 'Exclusive',
                      press: () {},
                    ),
                    RecommendedList(
                      name: "Assassin's Creed",
                      img: 'assets/images/ac.jpg',
                      desc: 'Triology',
                      press: () {},
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: getProportionateScreenWidth(30),
              ),

              SectionTile(text: "Popular Products", press: () {}),

              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        demoProducts.length,
                        (index) =>
                            productDetails(product: demoProducts[index])),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
