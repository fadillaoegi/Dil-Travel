import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:diltravel/widgets/form_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                        "Join us and get\nyour next journeysy",
                        style: tittleText.copyWith(fontSize: 24.0),
                      ),
                      FormDefault(text: "Email Address"),
                      FormDefault(text: "Passwordd"),
                      const SizedBox(height: 40.0),
                      Center(
                        child: Column(
                          children: [
                            ButtonDefault(text: "Sign In"),
                            const SizedBox(height: 50.0),
                            Row(
                              children: [
                                const Text("Belum punya akun? "),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Sign Up",
                                    style: descText.copyWith(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ],
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
