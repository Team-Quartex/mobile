import 'package:flutter/material.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07), // Adjusting padding based on screen width
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Changed to start for better alignment
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Spacer before the logo to move it down
                    SizedBox(height: screenHeight * 0.1), // 10% of screen height for extra space above logo

                    // Logo
                    Row(
                      children: [
                        Image.asset(
                          'assets/logoo.png',
                          height: screenHeight * 0.04, // Adjusted the logo height for better visibility
                        ),
                        SizedBox(width: screenWidth * 0.01),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03), // Space between logo and text

                    // Hello There Text
                    Text(
                      "Hello There,",
                      style: TextStyle(
                        fontSize: screenWidth * 0.12, // Responsive font size
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1C4E4E),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Name Field
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04, // Responsive label font size
                          color: Color(0xFF238688),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Email Field
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Color(0xFF238688),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Nickname Field
                    TextField(
                      decoration: InputDecoration(
                        labelText: "What we call to you",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Color(0xFF238688),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Password Field
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Color(0xFF238688),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Terms and Conditions Checkbox
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

                    // Sign Up Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF238688),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.15, // Responsive horizontal padding
                            vertical: screenHeight * 0.02, // Responsive vertical padding
                          ),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05, // Responsive font size
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Login Link
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
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
                                  color: Color(0xFF238688),
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

          // Footer
          Container(
            color: Color(0xFF238688),
            padding: const EdgeInsets.all(12),
            child: Center(
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
