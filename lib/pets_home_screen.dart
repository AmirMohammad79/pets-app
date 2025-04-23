import 'package:flutter/material.dart';

class PetsHomeScreen extends StatefulWidget {
  const PetsHomeScreen({super.key});

  @override
  State<PetsHomeScreen> createState() => _PetsHomeScreenState();
}

class _PetsHomeScreenState extends State<PetsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    SizedBox(width: 5),
                    Text(
                      ' hi (a.dev_79)',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text.rich(
                  TextSpan(
                    text: 'Adopt\n',
                    style: TextStyle(height: 1.1 , fontWeight: FontWeight.bold, fontSize: 37 ),
                    children: [
                      TextSpan(
                        text: "your pet's here!" ,
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 35 ),
                      )
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
