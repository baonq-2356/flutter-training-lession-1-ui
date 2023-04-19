import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'gradient_icon.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xfffe7446),
                Color(0xfff7386b),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 56.0),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Find and Meet people around\nyou to find LOVE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const RadiantGradientMask(
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 32.0,
                        ),
                      ),
                      const SizedBox(width: 8),
                      GradientText(
                        '|',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                        colors: const [
                          Color(0xfff7386b),
                          Color(0xfffe7446),
                        ],
                      ),
                      const SizedBox(width: 8),
                      GradientText(
                        'Sign in with Facebook',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                        colors: const [
                          Color(0xfff7386b),
                          Color(0xfffe7446),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const RadiantGradientMask(
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 32.0,
                        ),
                      ),
                      const SizedBox(width: 8),
                      GradientText(
                        '|',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                        colors: const [
                          Color(0xfff7386b),
                          Color(0xfffe7446),
                        ],
                      ),
                      const SizedBox(width: 8),
                      GradientText(
                        'Sign in with Email',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                        colors: const [
                          Color(0xfff7386b),
                          Color(0xfffe7446),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(24.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Center(
                            child: GradientText(
                              'Sign Up',
                              style: const TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
                              colors: const [
                                Color(0xfff7386b),
                                Color(0xfffe7446),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: GestureDetector(
                onTap: () {
                  if (kDebugMode) {
                    print('Sign In clicked');
                  }
                  Navigator.pop(context);
                },
                child: Text(
                  'Already Registered? Sign In'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
