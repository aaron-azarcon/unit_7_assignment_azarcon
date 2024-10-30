import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFF082851),
      appBar: AppBar(
        backgroundColor: Color(0xFF082851),
        title:
          const Center(
            child: Text(
                "Gesture and Navigation",
                style: TextStyle(
                    color: Color(0xFF11D9A6),
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              )
          )),
      body: Center(
        child:
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/about');
            },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(120, 55),
                backgroundColor: Color(0xFF11D9A6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide.none,
                ),
              ),
            child:
              const Text(
                'Go to About Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF082851),
                )
              )
          )
      )
    );
  }
}