

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:projects/Core/utiles/assets.dart';
import 'package:projects/Feature/Splash/presentation/views/Widgets/started_button.dart';

import '../../../../authntecation/presentation/views/screens/login_view.dart';
import 'description.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 110),
        Hero(
          tag: "logo",
          child: Image.asset(
            AssetsData.logo,
            width: 190,
            height: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        StlidingTexy(slidingAnimation: slidingAnimation),
        SizedBox(
          height: size.height * .27,
        ),
        const description_text(),
        SizedBox(
          height: size.height * .05,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LogIn()),
            );
          },
          child: MainButton(
            title: 'Get Satrted',
            hiSize: 65,
            widSize: double.infinity,
          ),
        )
      ],
    );
  }
}
