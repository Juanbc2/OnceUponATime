import 'package:flutter/material.dart';
import 'package:once_upon_a_time/components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Once Uppon A Time',
              style: TextStyle(color: Colors.black)),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
                child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 35, color: Colors.purple[700]),
                    textAlign: TextAlign.left,
                  ),
                ]),
                const SizedBox(height: 20),
                Text(
                    'Fill out the information in order to access your account.',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
                const SizedBox(height: 50),
                MyTextField(
                    controller: usernameController,
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(height: 20),
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                    onPressed: () {
                      // Navigate to second route when tapped.
                    },
                    child: const Text('Go'),
                  ),
                ),
                const SizedBox(height: 20),
                Text('Or sign up with',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey.shade400),
                        ))),
                    onPressed: () {
                      // Navigate to second route when tapped.
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_mobiledata, color: Colors.black),
                        SizedBox(width: 10),
                        Text('Continue with Google',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            ))));
  }
}
