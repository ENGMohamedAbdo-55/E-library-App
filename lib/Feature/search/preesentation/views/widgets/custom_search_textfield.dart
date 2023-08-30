import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });
  static dynamic searchedCharacter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: TextField(
        onChanged: (searchedCharacter) {},
        decoration: InputDecoration(
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white70),
        borderRadius: BorderRadius.circular(12));
  }
}
