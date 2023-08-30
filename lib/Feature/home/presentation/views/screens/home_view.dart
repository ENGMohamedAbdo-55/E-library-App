import 'package:flutter/material.dart';

import '../widgets/Hom_view_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HomeBody(),
    );
  }
}
