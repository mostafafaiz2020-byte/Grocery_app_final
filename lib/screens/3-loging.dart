// screens/3-loging.dart
import 'package:flutter/material.dart';

import '../widgets/logo.dart';
import '../widgets/email_field.dart';
import '../widgets/3_login_header.dart';
import '../widgets/password_field.dart';
import '../widgets/3_login_forgot_password.dart';
import '../widgets/3_login_button.dart';
import '../widgets/3_login_signup_row.dart';
import '4-BottomNavigationBar.dart';

class LogingScrreen extends StatefulWidget {
  const LogingScrreen({super.key});

  @override
  State<LogingScrreen> createState() => _LogingScrreenState();
}

class _LogingScrreenState extends State<LogingScrreen> {
  bool isPasswordHidden = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFF7F5), Colors.white, Color(0xFFF9F7FF)],
            ),
          ),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),

                  const LoginLogo(),

                  const SizedBox(height: 60),

                  const LoginHeader(),

                  const SizedBox(height: 35),

                  EmailField(controller: emailController, onChanged: (_) {}),

                  const SizedBox(height: 28),

                  PasswordField(
                    controller: passwordController,
                    isPasswordHidden: isPasswordHidden,
                    onToggle: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                  ),

                  const ForgotPassword(),

                  const SizedBox(height: 5),

                  LoginButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationScreen(),
                          ),
                        );
                      }
                    },
                  ),

                  const SizedBox(height: 16),

                  const SignupRow(),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
