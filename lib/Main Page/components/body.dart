import 'dart:io';

import 'package:copyproject1/Main%20Page/components/HeaderWIthSearchBox.dart';
import 'package:copyproject1/Main%20Page/components/recomends_card.dart';
import 'package:copyproject1/constants.dart';
import 'package:copyproject1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'FeatureCards.dart';
import 'TitleWithMoreBtn.dart';
import 'package:intl/intl.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Khuyên dùng",
            press: () {},
          ),
          RecomendsCard(),
          TitleWithMoreBtn(
            title: "Nhà cung cấp",
            press: () {},
          ),
          FeatureCards(),
          TitleWithMoreBtn(
            title: "Tin tức",
            press: () {},
          ),
          TitleWithMoreBtn(
            title: "Voucher",
            press: () {},
          ),
        ],
      ),
    );
  }
}

