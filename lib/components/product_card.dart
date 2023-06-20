import 'package:flutter/material.dart';

import 'package:ps5mobile/components/ScreenSize.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ps5mobile/models/PopProds.dart';

class productDetails extends StatelessWidget {
  const productDetails({
    Key? key,
    this.width = 140,
    this.aspectR = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectR;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectR,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Color(0xFF979797).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  product.images[0],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7643)),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                    width: getProportionateScreenWidth(20),
                    height: getProportionateScreenWidth(20),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? Color(0xFFFF7643).withOpacity(0.15)
                          : Color(0xFF979797).withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: product.isFavourite
                          ? Color(0xFFFF4848)
                          : Color(0xFFDBDEE4),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
