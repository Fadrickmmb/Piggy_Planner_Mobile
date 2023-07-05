import 'package:flutter/material.dart';
import 'name.dart';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 50,
          title: Container(
            width: 110,
            child: Image.asset('assets/images/White Piggy Font.png', ),
          ),
        ),
        body: Center(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Image.asset('assets/images/Piggy Logo.png', scale: 1.5,),
                )
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(
                    builder: (context) {
                      return Container(
                        width: 200,
                        padding: EdgeInsets.only(top: 50.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NameForm()));
                          },
                          child: Text('Start a new Piggy'),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              width: 3.0,
                              color: Colors.black,
                            ),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                          ),
                        ),
                      );
                }
                ),

              ],
            )
          ]),
        ),
      ),
    );
  }
}
