import 'AppColors.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'contactus.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/facemask.png'),
                    backgroundColor: AppColors.kWhiteColor,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Face Mask Detection App",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
            leading: Icon(
              Icons.assessment,
              color: Colors.black,
            ),
            title: Text("Home Page"),
          ),

          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => contactus()));
            },
            leading: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            title: Text("Contact Us"),
          ),
        ]
    );
  }
}