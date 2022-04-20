import 'package:copyproject1/Main%20Page/detail_page/notification.dart';
import 'package:copyproject1/Main%20Page/detail_page/personal.dart';
import 'package:copyproject1/Main%20Page/detail_page/shopping_cart.dart';
import 'package:flutter/material.dart';


class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        top: 10,
        right: 20,
        bottom: 10,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, -10),
        //     blurRadius: 35,
        //     color: kPrimaryColor.withOpacity(0.38),
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // DefaultTabController(
          //   length: 3,
          //   child: TabBar(
          //     tabs: [
          //       Tab(icon: Icon(Icons.home),),
          //       Tab(icon: Icon(Icons.shopping_cart),),
          //       Tab(icon: Icon(Icons.notifications),),
          //     ],
          //   ),
          // ),
          IconButton(
            icon: Icon(Icons.assignment_ind,size: 30,),
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return personal();
                },
              ),
            );},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,size: 30,),
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return shopping_cart();
                },
              ),
            );}
          ),
          IconButton(
            icon: Icon(Icons.notifications,size: 30,),
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return notification();
                },
              ),
            );}
          ),
        ],
      ),
    );
  }
}
