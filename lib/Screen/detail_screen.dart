import 'package:flutter/material.dart';

import '../Model/pets_models.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.pets});

  final PetsModel pets;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: size.height,
            width: size.width,
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height*0.73,),
                Text(
                  pets.name,
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Text(
                  pets.description,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54
                  ),
                ),
              ],

            ),),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: BoxDecoration(
                color: pets.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        pets.image,
                        height: size.height * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ageSexOrigin(pets.age, "Age"),
                          ageSexOrigin(pets.sex, "Sex"),
                          ageSexOrigin(pets.origin, "Origin"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Container ageSexOrigin(value , name) {
    return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                value,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black45,
                                ),
                              ),
                              Text(
                                name,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                        );
  }
}
