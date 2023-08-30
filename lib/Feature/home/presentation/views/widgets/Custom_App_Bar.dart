import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projects/Core/utiles/app_rourter.dart';

import '../../../../../Core/utiles/assets.dart';
import '../../../../authntecation/presentation/views/widgets/Sign_txt.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AssetsData.logo,
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: SignText(
                  txt: 'Library',
                  size: 47,
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 17),
              child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSearchview);
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 37,
                  ))),
        ],
      ),
    );
  }
}
