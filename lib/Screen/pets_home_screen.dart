import 'package:flutter/material.dart';
import 'package:pet/Model/pets_models.dart';

class PetsHomeScreen extends StatefulWidget {
  const PetsHomeScreen({super.key});

  @override
  State<PetsHomeScreen> createState() => _PetsHomeScreenState();
}

class _PetsHomeScreenState extends State<PetsHomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<PetsModel>> categoryList = [cats, dogs, birds, snakes, other];
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
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text.rich(
                  TextSpan(
                    text: 'Adopt\n',
                    style: TextStyle(
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                      fontSize: 37,
                    ),
                    children: [
                      TextSpan(
                        text: "your pet's here!",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              categorySelection(),
              selectedIndex < categoryList.length
                  ? (Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: SizedBox(
                      height: 570,
                      child: ListView.builder(
                        itemCount: categoryList[selectedIndex].length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.only(top: 30, right: 15),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 30),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  categoryList[selectedIndex][index]
                                                      .color,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            height: 230,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 230,
                                          child: Center(
                                            child: Image.asset(
                                              categoryList[selectedIndex][index]
                                                  .image,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                          color:
                                              categoryList[selectedIndex][index]
                                                  .color
                                                  .withValues(alpha: 0.2),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                categoryList[selectedIndex][index]
                                                    .name,
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                categoryList[selectedIndex][index]
                                                    .breed,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    categoryList[selectedIndex][index]
                                                        .sex,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  Text(
                                                    ", ${categoryList[selectedIndex][index].age} years old",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ))
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox categorySelection() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 75,
                    decoration: BoxDecoration(
                      color:
                          selectedIndex == index
                              ? Color(0XffFF9166)
                              : Color(0XffFF9166).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color:
                              selectedIndex == index
                                  ? Color(0XffFF9166).withValues(alpha: 0.5)
                                  : Colors.transparent,
                          blurRadius: 12,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        categoryList[index],
                        style: TextStyle(
                          color:
                          selectedIndex == index
                              ? Colors.white
                              : Colors.amber[900],
                          fontWeight:
                              selectedIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
