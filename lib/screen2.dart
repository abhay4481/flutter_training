import 'package:flutter_training/screen1.dart';
import 'package:flutter_training/screen3.dart';
import 'package:flutter/material.dart';

class screen2 extends StatelessWidget with InputValidationMixin{
  screen2({Key?key}):super(key:key);
  String? text;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login"),),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 20),
                child:Container(

                    child: ListView(
                        children: [
                          Text("Login", style: const TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold), ),
                          TextField(
                              controller: username,
                              decoration: InputDecoration(
                                labelText: "Student name",
                                icon: Icon(Icons.person), //icon at head of input
                              )
                          ),
                          TextField(
                            controller: username,
                            decoration: InputDecoration(
                              labelText: "Email",
                              icon: Icon(Icons.email), //icon at head of input
                            ),
                            // validator: (email) {
                            //   if (isEmailValid(email)) return null;
                            //   else
                            //     return 'Enter a valid email address';
                            // },
                          ),
                          ElevatedButton(child: Text("Login"),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return screen3();
                                }));
                              })
                        ]
                    )
                )
            )
        )
    );
  }

}
mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;

// bool isEmailValid(String email) {
//   Pattern pattern =  '^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,})) ' ;
//   // RegExp regex = new RegExp(pattern);
//   // return regex.hasMatch(email);
// }
}