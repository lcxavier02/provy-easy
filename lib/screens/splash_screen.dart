import 'package:flutter/material.dart';
import 'package:provy_easy/screens/signin_screen.dart';
import 'package:provy_easy/screens/signup_screen.dart';
import 'package:provy_easy/widgets/custom_button.dart';
import 'package:provy_easy/widgets/custom_scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
                child: Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Welcome to ProvyEasy!\n",
                            style: TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins")),
                        TextSpan(
                            text: "\nGlad to have you here.",
                            style:
                                TextStyle(fontSize: 20, fontFamily: "Poppins"))
                      ])),
                ),
              )),
          const Flexible(
              flex: 1,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          buttonText: 'Sign In',
                          onTap: SignInScreen(),
                          color: Colors.transparent,
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          buttonText: 'Sign Up',
                          onTap: SignUpScreen(),
                          color: Colors.white,
                          textColor: Colors.deepPurple,
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
