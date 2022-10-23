import 'dart:ui';

import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:diltravel/widgets/form_widget.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffafafa),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Join us and get\nyour next journey",
                        style: tittleText.copyWith(fontSize: 24.0),
                      ),
                      FormDefault(text: "Full Name"),
                      FormDefault(text: "Email Address"),
                      FormDefault(text: "Password"),
                      FormDefault(text: "Hoby"),
                      const SizedBox(height: 40.0),
                      Center(
                        child: Column(
                          children: [
                            ButtonDefault(text: "Get Started"),
                            const SizedBox(height: 50.0),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Terms and Conditions",
                                style: descText.copyWith(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
