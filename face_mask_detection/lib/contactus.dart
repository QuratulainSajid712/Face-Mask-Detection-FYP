import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';
import 'homepage.dart';
import 'maindrawer.dart';


class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();
}
class _contactusState extends State<contactus> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.kPrimaryColor,
      appBar: AppBar(
        title: Text("CONTACT US",
            style: TextStyle(color: AppColors.kPrimaryColor)),
        backgroundColor: AppColors.kWhiteColor,
        iconTheme: IconThemeData(color: AppColors.kPrimaryColor),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.home,
                color: AppColors.kPrimaryColor,
              ),
              onPressed: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Homepage(),
                ));
              }),
        ],),
      drawer: Drawer(
        child: MainDrawer(),),

      bottomNavigationBar: ContactUsBottomAppBar(
        companyName: 'Qurat-Ul-Ain Sajid',
        textColor: AppColors.kPrimaryColor,
        backgroundColor: AppColors.kWhiteColor,
        email: 'quratulainsajid12@gmail.com',
        // textFont: 'Sail',
      ),
      body: ContactUs(
          cardColor: Colors.white,
          textColor: Colors.teal.shade900,
          logo: AssetImage('assets/facemask.png',),
          email: 'quratulainsajid12@gmail.com',
          companyName: ' Qurat-Ul-Ain Sajid',
          companyColor: AppColors.kWhiteColor,
          phoneNumber: '+92335766131',
          githubUserName: 'QuratulainSajid712',
          linkedinURL:
          'https://www.linkedin.com/in/quratulain-sajid-a19617159/',
          tagLine: 'Flutter Developer',
          taglineColor: AppColors.kWhiteColor,
          instagram: 'quratulainSajid',
          facebookHandle: 'Qurat Ul Ain Sajid'),

    );
  }
}