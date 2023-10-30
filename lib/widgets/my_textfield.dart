import 'package:flutter/material.dart';

import '../utils/colors.dart';



class MyTextField extends StatelessWidget {
   const MyTextField({
    required this.controller,
    required this.hintText,
    super.key,
  });
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {

    
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 10)
        ),
      ),
    );
  }
}
