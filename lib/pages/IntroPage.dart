import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              'lib/images/puma.png',
              height: 240,
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          // title
          const Text(
            'Just Do It',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          const SizedBox(
            height: 24,
          ),
          // sub title

          const Text(
            'Brand new sneakers and custo m kicks made with premium qualty',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),

          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                )),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[900],
              ),
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
