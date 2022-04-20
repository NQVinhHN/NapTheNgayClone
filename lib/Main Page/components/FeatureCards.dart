import 'dart:ui';

import 'package:copyproject1/constants.dart';
import 'package:flutter/material.dart';

class FeatureCards extends StatelessWidget {
  const FeatureCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              FeatureCard(
                image: "assets/icons/vng_logo.png",
                press: () {},
              ),
              FeatureCard(
                image: "assets/icons/vtc_logo.jpg",
                press: () {},
              ),
              FeatureCard(
                image: "assets/icons/zing_logo.png",
                press: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FeatureCard(
                image: "assets/icons/soha_logo.png",
                press: () {},
              ),
              FeatureCard(
                image: "assets/icons/garena_logo.png",
                press: () {},
              ),
              FeatureCard(
                image: "assets/icons/gate-logo.png",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding - 4.5,
          top: kDefaultPadding / 2 +1,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.28,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            scale: 3,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
