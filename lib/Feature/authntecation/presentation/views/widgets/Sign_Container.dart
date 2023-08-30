import 'package:flutter/material.dart';

import '../../../../Splash/presentation/views/Widgets/started_button.dart';

class signContainer extends StatefulWidget {
  const signContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<signContainer> createState() => _signContainerState();
}

class _signContainerState extends State<signContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: widget.size.height * .36,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xff141414),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(60), bottomLeft: Radius.circular(60)),
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey, blurRadius: 10, offset: Offset(0, 6)),
          ]),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: widget.size.height * .007,
          ),
          const Text(
            "LogIn",
            textAlign: TextAlign.start,
            style: TextStyle(
                // fontFamily: "Dancing Script",
                color: Color(0xB3FCFCFC),
                fontSize: 30,
                fontWeight: FontWeight.w500),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
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
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xB3FCFCFC)),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: widget.size.height * .02,
          ),
          MainButton(
              title: "LogIn", hiSize: 50, widSize: widget.size.height * .25),
          SizedBox(
            height: widget.size.height * .01,
          ),
          const Text(
            "Forgot Password?",
            textAlign: TextAlign.start,
            style: TextStyle(
                // fontFamily: "Dancing Script",
                color: Color(0xB3FCFCFC),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ]),
      ),
    );
  }
}
