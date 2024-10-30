import 'package:unit_7_assignment_azarcon/components/tab_widget_1.dart';
import 'package:unit_7_assignment_azarcon/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white
          ),
          backgroundColor: const Color(0xFF082851),
          title: const Text(
            'About Me',
          style: TextStyle(
              color: Colors.white,
          )
        ),

        bottom: const TabBar(
          labelColor: Color(0xFF11D9A6),
          unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                  icon: Icon(Icons.contacts),
              ),
              Tab(
                  icon: Icon(Icons.notes)
              )
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              TabWidget1(),
              TabWidget2()
            ]
        )
      )
    );
  }
}