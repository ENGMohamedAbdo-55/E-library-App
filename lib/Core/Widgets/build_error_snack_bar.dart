import 'package:flutter/material.dart';

SnackBar buildErrorSnackBar(String errMessage) {
  return SnackBar(
    content: Text(
      errMessage,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    ),
    backgroundColor: Colors.grey,
    duration: const Duration(seconds: 3),
  );
}
