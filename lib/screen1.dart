import 'package:flutter_training/screen2.dart';
import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  screen1({Key?key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Started"),
    ),

        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 150),

                child: Center(

                  child: Container(

                    child: ListView(
                      children: [
                        const Align(
                          child: Text("TRAINING", style: TextStyle(fontSize: 40, color: Colors.blue)),

                        ),
                        const Center(
                          child: Image(
                            image: NetworkImage(
                                "https://d1whtlypfis84e.cloudfront.net/guides/wp-content/uploads/2018/11/29120847/Training-NEW.jpg"
                            ),
                          ),

                        ),
                        Align(

                          child: ElevatedButton(
                            child: const Text("Get Started"), onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return screen2();

                            }));
                          },
                          ),
                        )
                      ],


                    ),
                  ),
                )
            )
        ));
  }
}