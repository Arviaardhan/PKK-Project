import 'package:flutter/material.dart';
import 'package:pkk_project/Helper/themes.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/bg_splash.jpg", fit: BoxFit.fill, height: 400, width: 400,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Text("Learn languages \n easy and simple", style: splashTitleText, textAlign: TextAlign.center,),
            ),
            Text("Hone your speaking skills, improve \n your vocabulary, or learn grammar \n with ease", style: splashDescText, textAlign: TextAlign.center,),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: ElevatedButton(onPressed: () {}, child: Text("Let's Started", style: btnLoginText,), style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 130, vertical: 13), primary: primaryColor),),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Let's Started", style: btnRegisterText,), style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 130, vertical: 13), primary: Colors.white, side: BorderSide(color: Color(0xFFCA7B03), width: 2),),)
          ],
        ),
      )
    );
  }
}
