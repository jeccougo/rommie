import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roomie/skip/skip_pro.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = '/splashscreen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                Text(
                  'Roomie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(SkipPro.routeName);
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 50,
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
