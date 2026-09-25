import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                SizedBox(height: 80),
                //logo
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset("assets/images/logo.png", height: 100),
                ),
                const SizedBox(height: 130),
                //titles
                const Text(
                  "Just Do It",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 24),
                //subtitle
                const Text(
                  "Brand new sneakers and custom kicks made with premium quality.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: .bold,
                  ),

                  textAlign: .center,
                ),
                const SizedBox(height: 48),
                //start now button
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
