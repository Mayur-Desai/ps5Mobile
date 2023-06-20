import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:ps5mobile/components/ScreenSize.dart';

class Catogaries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> catogaries = [
      {"icon": "assets/icons/action.svg", "text": "Action"},
      {"icon": "assets/icons/arcade.svg", "text": "Arcade"},
      {"icon": "assets/icons/fps.svg", "text": "FPS"},
      {"icon": "assets/icons/puzzle.svg", "text": "puzzle"},
      {"icon": "assets/icons/stratergy.svg", "text": "Strategy"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              catogaries.length,
              (index) => CatagoriesCard(
                  icon: catogaries[index]["icon"],
                  text: catogaries[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CatagoriesCard extends StatelessWidget {
  const CatagoriesCard({
    Key? key,
    //required this.catogaries,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String icon, text;
  final GestureTapCallback press;

  //final List<Map<String, dynamic>> catogaries;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(13)),
                decoration: BoxDecoration(
                  color: Color(0xFFffecdf),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
