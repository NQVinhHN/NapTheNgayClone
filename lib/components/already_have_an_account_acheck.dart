import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Bạn chưa có tài khoản? " : "Bạn đã có tài khoản? ",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login? "Đăng ký" : "Đăng nhập",
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}
