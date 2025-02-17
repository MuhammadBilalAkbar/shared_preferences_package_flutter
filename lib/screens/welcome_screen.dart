import 'package:flutter/material.dart';

import '../screens/signin_screen.dart';
import '../screens/signup_screen.dart';
import '../theme/theme.dart';
import '../widgets/build_custom_scaffold.dart';
import '../widgets/build_welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) => BuildCustomScaffold(
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
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              '\nEnter personal details to your employee account',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    const Expanded(
                      child: BuildWelcomeButton(
                        buttonText: 'Sign in',
                        onTap: SignInScreen(),
                        color: Colors.transparent,
                        textColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: BuildWelcomeButton(
                        buttonText: 'Sign up',
                        onTap: const SignUpScreen(),
                        color: Colors.white,
                        textColor: lightColorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
