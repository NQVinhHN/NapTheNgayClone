import 'package:flutter/material.dart';

import '../../constants.dart';

class RecomendsCard extends StatelessWidget {
  const RecomendsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Recommend_Card(
            image: "assets/icons/vng_logo.png",
            title: "VNG Games",
            type: "Thẻ Game",
            price: 20000,
            press: () {},
          ),
          Recommend_Card(
            image: "assets/icons/vtc_logo.jpg",
            title: "VTC Games",
            type: "Thẻ Game",
            price: 20000,
            press: () {},
          ),
          Recommend_Card(
            image: "assets/icons/zing_logo.png",
            title: "Zing Games",
            type: "Thẻ Game",
            price: 20000,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Recommend_Card extends StatelessWidget {
  const Recommend_Card({
    Key? key,
    required this.image,
    required this.title,
    required this.type,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, type;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 1,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.4,
            child: Image.asset(
              image,
              height: 100,
              width: 100,
              alignment: Alignment.center,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(0, 10),
                //     blurRadius: 100,
                //     color: Colors.red,
                //   ),
                // ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        TextSpan(
                          text: "$type",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "$priceđ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
