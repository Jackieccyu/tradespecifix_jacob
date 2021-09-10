import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradespecifix_jacob/pallete.dart';
import 'package:tradespecifix_jacob/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class CreateNewAccount extends StatelessWidget {
  String valuechoose;
  List listitem = [
    "Canada",
    "USA",
    "England"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/register_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey[400].withOpacity(
                              0.4,
                            ),
                            child: Icon(
                              FontAwesomeIcons.user,
                              color: kWhite,
                              size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowUp,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Edit Profile',
                          style: kBodyText,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'First Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Last Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.next,
                    ),
                    
                    DropdownButton(
                      hint: Text("Select Country"),
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      
                      // isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22
                      ),
                      value: valuechoose,
                      onChanged: (newValue) {
                        valuechoose = newValue;
                      },
                      items: listitem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                    
                    
                    SizedBox(
                      height: 75,
                    ),
                    RoundedButton(buttonName: 'Change Password'),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
