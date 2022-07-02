import 'package:flutter/material.dart';

class TextWid extends StatefulWidget{
  const TextWid({Key?key}):super(key: key);

  @override
  State<TextWid> createState() =>_TextFieldDemoState();
}
class _TextFieldDemoState extends State<TextWid>{
  var _secureText=true;
  String ?_nameError=null;
  TextEditingController _nameController=TextEditingController();
  TextEditingController _mobileController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
            TextField(
            controller: _nameController,
            decoration: InputDecoration(
              errorText: _nameError,
              labelText: " LOGIN",
              labelStyle: const TextStyle(fontSize: 28, color: Colors.blueAccent),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "Student Name",
                hintText: "Enter your Name",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                border: InputBorder.none,
                fillColor: Colors.black12,
                filled: true
            ),
          )

          ,const  SizedBox(
          height: 20,
        ),
          const TextField(
            decoration: InputDecoration(
                labelText: "Email Id",
                hintText: "Enter your EMAIL ID",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                border: InputBorder.none,
                fillColor: Colors.black12,
                filled: true
            ),
          ),

          const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          setState((){
            if(_nameController.text.length<3) {
              _nameError="Enter atleast 2 character";
            } else {
              _nameError=null;
            }
          });
          print("Name${_nameController.text}");
        }, child: const Text("Login"))
        ],
      ),
    ),
    ),
    );
  }
}