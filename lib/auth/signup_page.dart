import 'package:flutter/material.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth *
                      0.07),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: screenHeight *
                            0.1),
                    Row(
                      children: [
                        Image.asset(
                          'assets/logoo.png',
                          height: screenHeight *
                              0.04,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                      ],
                    ),
                    SizedBox(
                        height:
                            screenHeight * 0.03),
                    Text(
                      "Hello There,",
                      style: TextStyle(
                        fontSize: screenWidth * 0.12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1C4E4E),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),


                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          fontSize:
                              screenWidth * 0.04,
                          color: const Color(0xFF238688),
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),


                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color(0xFF238688),
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    TextField(
                      decoration: InputDecoration(
                        labelText: "What we call to you",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color(0xFF238688),
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color(0xFF238688),
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Expanded(
                          child: Text(
                            "Agree to the terms and conditions",
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.04),


                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF238688),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth *
                                0.15,
                            vertical: screenHeight *
                                0.02,
                          ),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize:
                                screenWidth * 0.05,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),


                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              color: Colors.black87,
                            ),
                            children: [
                              TextSpan(
                                text: "Login",
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
          ),


          Container(
            color: const Color(0xFF238688),
            padding: const EdgeInsets.all(12),
            child: const Center(
              child: Text(
                "Copyright © 2024 Quartex. All Rights Reserved !",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
