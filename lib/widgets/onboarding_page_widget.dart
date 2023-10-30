import 'package:flutter/material.dart';
import 'package:gbverse/utils/colors.dart';
import 'package:gbverse/utils/my_text.dart';
import 'package:gbverse/widgets/my_button.dart';

class OnBoardingPageWidget extends StatelessWidget {
  final String title;
  final String buttonText;
  final String imgPath;
  final String description;
  final double buttonWidth;
  final Function onButtonPressed;
  const OnBoardingPageWidget({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.buttonText,
    required this.buttonWidth,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
          ),
        ),

        Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(top: 30),
          child: MyText(
              text: title,
              color: AppColors.headingColor,
              size: 24,
              fontWeight: FontWeight.bold),
        ),

        Container(
          margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: MyText(
            textAlign: TextAlign.center,
            text: description,
            color: AppColors.textColor,
            size: 18,
            fontWeight: FontWeight.normal,
            lineHeight: 1.25,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .1,),
        InkWell(
          onTap: (){
            onButtonPressed();
          },
          child: myButton(
            text: buttonText,
            width: buttonWidth,
            height: 54,
            buttonColor: AppColors.primaryColor,
            TextColor: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            borderRadius: 5,
          ),
        ),
      ],
    );
  }
}
