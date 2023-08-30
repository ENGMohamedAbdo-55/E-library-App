import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/loginbody.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogIn_body(),
    );
  }
}
