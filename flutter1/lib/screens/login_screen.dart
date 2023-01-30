import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uygulama/palette.dart';
import 'package:uygulama/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: "images/1.jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: ShaderMask(
                    blendMode: BlendMode.srcATop,
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 1.0,
                        colors: <Color>[
                          Color.fromARGB(255, 238, 223, 88),
                          Color.fromARGB(255, 12, 88, 69),
                        ],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: Text(
                      "Flutter\n  Gezgini",
                      style: TextStyle(
                        color: Color.fromARGB(252, 139, 141, 31),
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: "Email",
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.eyeLowVision,
                    hint: "Şifre",
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'Şifreni mi unuttun?'),
                    child: Text(
                      "Şifreni mi\n unuttun?",
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoundedButton(
                    buttonName: "Giriş Yap",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, 'Yeni Bir Hesap Oluştur'),
                child: Container(
                  child: Text(
                    "Yeni Bir Hesap Oluştur",
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.white))),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
