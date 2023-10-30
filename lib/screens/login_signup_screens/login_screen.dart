
import 'package:flutter/material.dart';
import 'package:gbverse/utils/colors.dart';
import 'package:gbverse/widgets/my_button.dart';

import '../../widgets/label_text.dart';
import '../../widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
    
      backgroundColor:  AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                    
                  const SizedBox(height: 30,),
                    
                  
                    
                  const LabelText(label: "Email",),
                  const SizedBox(height: 7,),
                  MyTextField(controller: emailController, hintText:"Please Enter your email"),
                    
                  const SizedBox(height: 20,),
                    
                  const LabelText(label: "Password",),
                  const SizedBox(height: 7,),
                  MyTextField(controller: passwordController, hintText:"Please Enter your password"),
                  
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?", style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),)
                    ],
                  ),
                    
                  const SizedBox(height: 30,),
                      
                  myButton(text: "Login", width: MediaQuery.of(context).size.width, height: 50, buttonColor: AppColors.primaryColor, TextColor: AppColors.whiteColor, fontSize: 18, fontWeight: FontWeight.bold, borderRadius: 10),
                      
                ]),


                Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? ", style: TextStyle(fontSize: 18),),
                       
                        Text("Sign up", style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 18),)
                      ],
                    ),
                  ],
                )
            ],
          ),
        ),
      ));
  }
}





