import 'package:flutter/material.dart';
import 'Signup_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Image.asset(
                        'assets/logoo.png',
                        height: screenHeight * 0.04,
                      ),
                      SizedBox(width: screenWidth * 0.01),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  Text(
                    "Welcome,",
                    style: TextStyle(
                      fontSize: screenWidth * 0.12,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF238688),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),


                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "User Name",
                      labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color(0xFF238688)),
                      border: const UnderlineInputBorder(),
                      suffixIcon: const Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),


                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    style: const TextStyle(color: Color(0xFF238688)),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color(0xFF238688)),
                      border: const UnderlineInputBorder(),
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),


                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),


                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF238688),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.2,
                            vertical: screenHeight * 0.02),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: screenWidth * 0.05, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),


                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              color: Colors.black87),
                          children: [
                            TextSpan(
                              text: "Create",
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                                color: const Color(0xFF238688),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            color: const Color(0xFF238688),
            padding: EdgeInsets.all(screenHeight * 0.015),
            child: Center(
              child: Text(
                "Copyright © 2024 Quartex. All Rights Reserved !",
                style: TextStyle(
                    fontSize: screenWidth * 0.030, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
