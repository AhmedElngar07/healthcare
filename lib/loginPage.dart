import 'package:flutter/material.dart';
import 'Components/myTextFiled.dart';
import 'Components/MyButton.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void signuserin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 228, 228),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      const Icon(
                        Icons.medical_services_rounded,
                        size: 100,
                      ),
                      const SizedBox(height: 50),
                      MyTextField(
                        controller: userNameController,
                        hintText: "Username",
                        obscureText: false,
                      ),
                      const SizedBox(height: 25),
                      MyTextField(
                        controller: passwordController,
                        hintText: "Password",
                        obscureText: true,
                      ),
                      const SizedBox(height: 25),
                      MyButton(onTap: signuserin),
                    ],
                  ))),
        )));
  }
}
