import 'package:flutter/material.dart';
import 'package:projects/Feature/authntecation/presentation/views/widgets/Sign_txt.dart';
import 'package:projects/Feature/authntecation/presentation/views/widgets/Sub_sign.dart';

import '../../../../../Core/utiles/assets.dart';
import '../screens/SignUp_View.dart';
import 'RebWay_sign.dart';
import 'Sign_Container.dart';

class LogIn_body extends StatefulWidget {
  const LogIn_body({super.key});

  @override
  State<LogIn_body> createState() => _LogIn_bodyState();
}

class _LogIn_bodyState extends State<LogIn_body> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(height: size.height * .039),
            Hero(tag: "logo", child: Image.asset(
      AssetsData.logo,
      alignment: Alignment.topLeft,
      width: 120,
      height: 170,
    )),
            SizedBox(height: size.height * .01),
            Container(child: SignText(txt: "Welcome", size: 50)),
            SizedBox(height: size.height * .006),
            SignText(
                txt:
                    "Let's Create A New Acount\n To Choose Your Favourite Books  ",
                size: 20),
            SizedBox(
              height: size.height * .03,
            ),
            Center(
              child: Column(
                children: [
                  signContainer(size: size),
                  SizedBox(
                    height: size.height * .015,
                  ),
                  SignText(txt: "OR With", size: 25),
                  const SizedBox(
                    height: 6,
                  ),
                  subsign(),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SinUP()),
                        );
                      },
                      child: const RebWaySign(
                        fTxt: "don't have acount?",
                        secTxt: 'SignUp',
                      )),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
