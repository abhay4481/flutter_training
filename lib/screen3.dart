import 'package:flutter/material.dart';

class screen3 extends StatelessWidget{
  String ? name="Abhay Pratap Singh";
  screen3({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 20),
              child: ListView(
                  children: [
                    Text("Hi [$name]  ", style: const TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold), ),
                    Image(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/002/349/754/original/modern-elegant-certificate-template-free-vector.jpg")),
                    Text("You hava Successfully Complete Hybride Mobile App Development Course" ,style: TextStyle(fontSize: 15),),
                    Text("INSTRUCTORS NAME", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Pankaj Kapoor", style: TextStyle(fontSize: 15, color: Colors.blue),)
                  ]
              )
          )
      ),
    );
  }

}