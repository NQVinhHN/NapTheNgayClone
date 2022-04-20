import 'package:copyproject1/Screens/Welcome/Login/login_screen.dart';
import 'package:copyproject1/Screens/Welcome/components/background.dart';
import 'package:copyproject1/components/rounded_button.dart';
import 'package:copyproject1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.21),
              const Text(
                "Chào mừng bạn đã đến với NAPTHENGAY.VN",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                width: size.width * 0.2,
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.04),
              RoundedButton(
                text: "Đăng nhập",
                color: Colors.white,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "Đăng ký",
                color: Colors.white,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
    );
  }
}
