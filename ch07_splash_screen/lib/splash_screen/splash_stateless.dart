import 'package:flutter/material.dart';

// StatelessWidget :: 상태가 없기 때문에 리랜더링 안됨.
class SplashScreenstateless extends StatelessWidget {
  const SplashScreenstateless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', width: 200,),
                  SizedBox(height: 30.0,),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                  // LinearProgressIndicator()
                ],
              )
            ],
          )
        )
      ),
    );
  }
}