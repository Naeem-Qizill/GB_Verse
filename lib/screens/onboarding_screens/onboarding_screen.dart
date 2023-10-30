import 'package:flutter/material.dart';
import 'package:gbverse/screens/login_signup_screens/login_screen.dart';
import 'package:gbverse/widgets/scrolling_dots.dart';

import '../../utils/colors.dart';
import '../../widgets/onboarding_page_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});


  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
   final PageController _controller = PageController();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //first page
                    OnBoardingPageWidget(
                      title: "Explore Gilgit Baltistan",
                      imgPath: "assets/onboarding/ghizer_valley.jpg",
                      description:
                          "Explore the culture, tradition, and geography of Gilgit Baltistan.",
                      buttonText: 'Next',
                      buttonWidth: MediaQuery.of(context).size.width * .27,
                      onButtonPressed: (){
                        _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                      },
                    ),

                    //second page
                    OnBoardingPageWidget(
                      title: "Ask Q&A",
                      imgPath: "assets/onboarding/qa.png",
                      description:"engage with the community and get insights about gilgit baltistan.",
                        buttonText: 'Next',
                      buttonWidth: MediaQuery.of(context).size.width * .27,
                      onButtonPressed: (){
                        _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                      },
                    ),

                    //third page
                    OnBoardingPageWidget(
                      title: "Find a Hotel Room",
                      imgPath: "assets/onboarding/hotel.png",
                      description:"select the day, book your room. we give you the best price.",
                        buttonText: 'Next',
                        buttonWidth: MediaQuery.of(context).size.width * .27,
                      onButtonPressed: (){
                        _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                      },
                    ),

                    //forth page
                    OnBoardingPageWidget(
                        title: "Find Your Favorite Items",
                        imgPath: "assets/onboarding/shop.png",
                        description:"get 100% authentic products of gilgit baltistan from our online shopping store.",
                        buttonText: 'Get Started',
                      buttonWidth: MediaQuery.of(context).size.width * .33,
                      onButtonPressed: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen(),), (route) => false);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.42,
            top: MediaQuery.of(context).size.height * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dots(
                    width: index == 0 ? 24 : 6,
                    color: index == 0
                        ? AppColors.primaryColor
                        : AppColors.lightGrey),
                Dots(
                    width: index == 1 ? 24 : 6,
                    color: index == 1
                        ? AppColors.primaryColor
                        : AppColors.lightGrey),
                Dots(
                    width: index == 2 ? 24 : 6,
                    color: index == 2
                        ? AppColors.primaryColor
                        : AppColors.lightGrey),
                Dots(
                    width: index == 3 ? 24 : 6,
                    color: index == 3
                        ? AppColors.primaryColor
                        : AppColors.lightGrey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
