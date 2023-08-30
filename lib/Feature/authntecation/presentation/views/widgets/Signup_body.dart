import 'package:flutter/material.dart';

import '../../../../../Core/utiles/assets.dart';
import '../../../../Splash/presentation/views/Widgets/started_button.dart';
import '../screens/login_view.dart';
import 'RebWay_sign.dart';
import 'Sign_txt.dart';
import 'Sub_sign.dart';

class SignUp_Body extends StatelessWidget {
  const SignUp_Body({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(height: size.height * .015),
            Hero(tag: "logo", child: Image.asset(
      AssetsData.logo,
      alignment: Alignment.topLeft,
      width: 120,
      height: 170,
    )),
            SizedBox(height: size.height * .006),
            Container(child: SignText(txt: "Welcome", size: 40)),
            SizedBox(height: size.height * .006),
            SignText(
                txt:
                    "Let's Create A New Acount\n To Choose Your Favourite Books ",
                size: 15),
            SizedBox(
              height: size.height * .03,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: size.height * .43,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xff141414),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 10,
                              offset: Offset(0, 6)),
                        ]),
                    child: Column(children: [
                      SizedBox(
                        height: size.height * .003,
                      ),
                      const Text(
                        "SignUp",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            // fontFamily: "Dancing Script",
                            color: Color(0xB3FCFCFC),
                            fontSize: 26,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Color(0xB3FCFCFC)),
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Color(0xB3FCFCFC)),
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Color(0xB3FCFCFC)),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      MainButton(
                          title: "SignUp",
                          hiSize: 50,
                          widSize: size.height * .25)
                    ]),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  SignText(txt: "OR With", size: 21),
                  const SizedBox(
                    height: 3,
                  ),
                  subsign(),
                  SizedBox(
                    height: size.height * .007,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()),
                        );
                      },
                      child: const RebWaySign(
                        fTxt: "Already have an acount?",
                        secTxt: 'LogIn',
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
