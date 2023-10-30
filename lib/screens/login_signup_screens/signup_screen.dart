import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:gbverse/utils/colors.dart';

import '../../widgets/label_text.dart';
import '../../widgets/my_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    String countryValue = "";
    String stateValue = "";
    String cityValue = "";
    String address = "";
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(label: "Name",),
                  const SizedBox(height: 7,),
                  MyTextField(controller: nameController, hintText:"Please Enter your name"),
                ],
              ),
        
              const SizedBox(height: 20,),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(label: "Email",),
                  const SizedBox(height: 7,),
                  MyTextField(controller: emailController, hintText:"Please Enter your email"),
                ],
              ),
        
              const SizedBox(height: 20,),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(label: "Password",),
                  const SizedBox(height: 7,),
                  MyTextField(controller: passwordController, hintText:"Please Enter your password"),
                ],
              ),
        
              const SizedBox(height: 20,),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(label: "Confirm Password",),
                  const SizedBox(height: 7,),
                  MyTextField(controller: nameController, hintText:"Please Re-Enter your password"),
                ],
              ),
        
              const SizedBox(height: 20,),
        
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelText(label: "Country/City",),
                    const SizedBox(height: 7,),
                    SizedBox(
                  
                  height: 600,
                  child: Column(
                    children: [
                      ///Adding CSC Picker Widget in app
                      CSCPicker(
                        onCountryChanged: (value) {
                          setState(() {
                            ///store value in country variable
                            //countryValue = value;
                            
                          }
                          );
                          print("hiiiii");
                        },
                    
                        ///triggers once state selected in dropdown
                        onStateChanged: (value) {
                          setState(() {
                            ///store value in state variable
                            //stateValue = value!;
                          });
                        },
                    
                        ///triggers once city selected in dropdown
                        onCityChanged: (value) {
                          setState(() {
                            ///store value in city variable
                            cityValue = value!;
                          });
                        },
          
                        layout: Layout.vertical,
                        ///Enable disable state dropdown [OPTIONAL PARAMETER]
                        //showStates: true,
                    
                        /// Enable disable city drop down [OPTIONAL PARAMETER]
                        //showCities: true,
          
                    
                    
                        ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                        // flagState: CountryFlag.ENABLE,
                    
                        ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                        dropdownDecoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            border:
                                Border.all(color: AppColors.lightGrey, width: 2,)),
                    
                        ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                        disabledDropdownDecoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          
                            color: Colors.grey.shade300,
                            border:
                                Border.all(color: AppColors.lightGrey, width: 2,)),
                    
                        ///placeholders for dropdown search field
                        // countrySearchPlaceholder: "Country",
                        // stateSearchPlaceholder: "State",
                        // citySearchPlaceholder: "City",
                    
                        ///labels for dropdown
                        // countryDropdownLabel: "Country",
                        // stateDropdownLabel: "State",
                        // cityDropdownLabel: "City",
                    
                        ///Default Country
                        // defaultCountry: CscCountry.Pakistan,
                    
                        ///Country Filter [OPTIONAL PARAMETER]
                        //countryFilter: [CscCountry.India,CscCountry.United_States,CscCountry.Canada],
                    
                        ///Disable country dropdown (Note: use it with default country)
                        //disableCountry: false,
                        
                    
                        ///selected item style [OPTIONAL PARAMETER]
                        selectedItemStyle: TextStyle(
                          color: AppColors.headingColor,
                          
                          fontSize: 14,
                        ),
                    
                        ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                        dropdownHeadingStyle: TextStyle(
                            color: AppColors.headingColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                    
                        ///DropdownDialog Item style [OPTIONAL PARAMETER]
                        dropdownItemStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                    
                        ///Dialog box radius [OPTIONAL PARAMETER]
                        dropdownDialogRadius: 10.0,
          
                        
                    
                        ///Search bar radius [OPTIONAL PARAMETER]
                        searchBarRadius: 10.0,
                    
                        ///triggers once country selected in dropdown
                        
          
          
          
                    
                        ///Show only specific countries using country filter
                        // countryFilter: ["United States", "Canada", "Mexico"],
                      ),
                    
                      ///print newly selected country state and city in Text Widget
                      TextButton(
                          onPressed: () {
                            setState(() {
                              address = "$cityValue, $stateValue, $countryValue";
                            });
                          },
                          child: const Text("Print Data")),
                      Text(address)
                    ],
                  )),
                
                        ],
                      ),
              ),
            ]),
        ),
      ));
  }
}



