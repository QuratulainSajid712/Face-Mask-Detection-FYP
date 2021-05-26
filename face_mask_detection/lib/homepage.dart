import 'package:flutter/material.dart';

import 'dart:async';
import 'AppColors.dart';
import 'maindrawer.dart';




class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {

            return Scaffold(
              appBar: AppBar(
                title: Text("Face Mask Detection",
                    style: TextStyle(color: AppColors.kWhiteColor)),
                iconTheme: IconThemeData(color: AppColors.kWhiteColor),
                centerTitle: true,
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.home,
                        color: AppColors.kWhiteColor,
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                      }),
                ],),
              drawer: Drawer(
                child: MainDrawer(),
              ),
    );

  }
}