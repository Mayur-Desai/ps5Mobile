import 'package:flutter/material.dart';
import 'package:ps5mobile/components/ScreenSize.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ButtWithCount extends StatelessWidget {
  const ButtWithCount({
    Key? key,
    required this.svgScr,
    this.numOfItems=0,
    required this.press,
  }) : super(key: key);
  final String svgScr;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(

        clipBehavior: Clip.none,
        children: [
          Container(
            padding:
            EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: Color(0xFF979797).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset( svgScr),
          ),
          if(numOfItems!=0)
            Positioned(
              top: -2,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1.5, color: Colors.white)),

                child: Center(
                  child: Text(
                    "$numOfItems",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height:1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}