import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uygulama/palette.dart';
import 'package:uygulama/widgets/background_image.dart';
import 'package:uygulama/widgets/text_inputfield.dart';
import 'package:uygulama/widgets/widgets.dart';

class SifreUnuttun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: "images/4.jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 10,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: Text(
              "Şifreni Yenile",
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(children: [
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.9,
                    decoration: BoxDecoration(color: Colors.black38),
                    child: Text(
                      "   Email adresinize şifrenizi yenilemeniz için bir kod gönderilecektir.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(buttonName: "Gönder"),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
