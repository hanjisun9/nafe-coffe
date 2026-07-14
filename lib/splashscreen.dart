import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nafe_coffe/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4E342E), Color(0xFF8D6E63)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splash.png'),
              SizedBox(height: 10),
              Text(
                'Choice your\nFavorite Coffee',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lilita One',
                  fontSize: 40,
                  color: Colors.white,
                  height: 1.0,
                ),
              ),

              const SizedBox(height: 20),
              Text(
                'Enjoy the perfect cup of coffee with us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 45),

              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD4AF37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4E342E)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
