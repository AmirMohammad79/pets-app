import 'package:flutter/material.dart';

class PetsModel {
  String name;
  String breed;
  String image;
  String age;
  String sex;
  String origin;
  Color color;
  String description;

  PetsModel({
    required this.image,
    required this.name,
    required this.breed,
    required this.sex,
    required this.age,
    required this.origin,
    required this.color,
    required this.description,
  });
}

List<PetsModel> cats = [
  PetsModel(
    name: 'Mono LaMi',
    breed: 'British Shorthair cats',
    image: 'assets/images/cat3.png',
    age: "1",
    origin: "US",
    sex: "Femail ",
    color: const Color(0xffC1B7B1),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Amila Marko',
    breed: 'LaPerm cats',
    image: 'assets/images/cat2.png',
    age: "2",
    origin: "US",
    sex: "Femail ",
    color: const Color(0xffD7BF9D),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Yon lee',
    breed: 'Persian cat',
    image: 'assets/images/cat1.png',
    age: "3 ",
    origin: "Iran",
    sex: "Femail ",
    color: const Color(0xffB1D1FF),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
];
List<PetsModel> dogs = [
  PetsModel(
    name: 'Max',
    breed: 'Labrador Retriever',
    image: 'assets/images/dog1.png',
    age: " 1",
    origin: "UK",
    sex: "Dog",
    color: const Color(0xffC1B7B1),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Bella',
    breed: 'Golden Retriever',
    image: 'assets/images/dog2.png',
    age: " 2",
    origin: "Italy",
    sex: "Dog",
    color: const Color(0xffD7BF9D),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Charlie',
    breed: 'German Shepherd',
    image: 'assets/images/dog3.png',
    age: " 2.5",
    origin: "India",
    sex: "Dog",
    color: const Color(0xffB1D1FF),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Daisy',
    breed: 'Beagle',
    image: 'assets/images/dog4.png',
    age: "2.5",
    origin: "India",
    sex: "Dog",
    color: const Color(0xffC1B7B1),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Luna',
    breed: 'Siberian Husky',
    image: 'assets/images/dog5.png',
    age: " 2.5",
    origin: "India",
    sex: "Dog",
    color: const Color(0xffB1D1FF),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
];
List<PetsModel> birds = [
  PetsModel(
    name: 'Charlie',
    breed: 'African Grey Parrot',
    image: 'assets/images/bird1.png',
    age: " 1",
    origin: "Nepal",
    sex: "bird",
    color: const Color(0xffC1B7B1),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Rio',
    breed: 'Scarlet Macaw',
    image: 'assets/images/bird2.png',
    age: "1",
    origin: "Fra",
    sex: "Bird",
    color: const Color(0xffC1B7B1),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Sunny',
    breed: 'Cockatiel',
    image: 'assets/images/bird3.png',
    age: " 1",
    origin: " UK",
    sex: "Bird",
    color: const Color(0xffB1D1FF),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Blue',
    breed: 'Gold Macaw',
    image: 'assets/images/bird4.png',
    age: " 2",
    origin: "NZ",
    sex: "bird",
    color: const Color(0xffC1B7B1),
    description:
    "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
];
List<PetsModel> snakes = [
  PetsModel(
    name: 'Sly',
    breed: 'Corn Snake',
    image: 'assets/images/snake1.png',
    age: "2",
    origin: "USA",
    sex: "Male",
    color: Color(0xffC1B7B1),
    description: "Corn snakes are gentle and great for beginners. They are non-venomous and enjoy being handled.",
  ),
  PetsModel(
    name: 'Zara',
    breed: 'Ball Python',
    image: 'assets/images/snake2.png',
    age: "3",
    origin: "Africa",
    sex: "Female",
    color: Color(0xffD7BF9D),
    description: "Ball pythons are known for their calm nature. They curl into a ball when scared, hence the name.",
  ),
  PetsModel(
    name: 'Viper',
    breed: 'King Snake',
    image: 'assets/images/snake3.png',
    age: "1.5",
    origin: "Mexico",
    sex: "Male",
    color: Color(0xffB1D1FF),
    description: "King snakes are colorful and immune to other snake venom. They are curious and easy to care for.",
  ),
  PetsModel(
    name: 'Shadow',
    breed: 'Milk Snake',
    image: 'assets/images/snake4.png',
    age: "2.5",
    origin: "Canada",
    sex: "Female",
    color: Color(0xffC1B7B1),
    description: "Milk snakes are beautiful with red, black, and white bands. They are harmless and active.",
  ),
  PetsModel(
    name: 'Bolt',
    breed: 'Rosy Boa',
    image: 'assets/images/snake5.png',
    age: "4",
    origin: "USA",
    sex: "Male",
    color: Color(0xffD7BF9D),
    description: "Rosy boas are small, slow-moving snakes that do well in captivity and are easy to handle.",
  ),
];

List<PetsModel> other = [
  PetsModel(
    name: 'Nemo',
    breed: 'Clownfish',
    image: 'assets/images/fish1.png',
    age: "1",
    origin: "Australia",
    sex: "Male",
    color: Color(0xffB1D1FF),
    description: "Clownfish are colorful and peaceful fish known for living among sea anemones.",
  ),
  PetsModel(
    name: 'Hopper',
    breed: 'Dwarf Rabbit',
    image: 'assets/images/rabbit1.png',
    age: "2",
    origin: "Netherlands",
    sex: "Female",
    color: Color(0xffD7BF9D),
    description: "Dwarf rabbits are tiny, friendly, and perfect for indoor companionship.",
  ),
  PetsModel(
    name: 'Rocky',
    breed: 'Guinea Pig',
    image: 'assets/images/guinea1.png',
    age: "1.5",
    origin: "Peru",
    sex: "Male",
    color: Color(0xffC1B7B1),
    description: "Guinea pigs are sociable rodents that love to squeak and explore.",
  ),
  PetsModel(
    name: 'Shelly',
    breed: 'Tortoise',
    image: 'assets/images/tortoise1.png',
    age: "5",
    origin: "Greece",
    sex: "Female",
    color: Color(0xffD7BF9D),
    description: "Tortoises are quiet, long-lived reptiles with peaceful personalities.",
  ),
  PetsModel(
    name: 'Poko',
    breed: 'Hamster',
    image: 'assets/images/hamster1.png',
    age: "1",
    origin: "Syria",
    sex: "Male",
    color: Color(0xffB1D1FF),
    description: "Hamsters are tiny, energetic, and fun pets, especially for kids.",
  ),
];

List<String> categoryList = [
  'Cats',
  'Dogs',
  'Birds',
  'Snakes',
  'Other',
];