import 'package:flutter/material.dart';

void main() {
  runApp(TimeForm());
}

class TimeForm extends StatefulWidget {
  const TimeForm({Key? key}) : super(key: key);

  @override
  State<TimeForm> createState() => _TimeFormState();
}

class _TimeFormState extends State<TimeForm> {

  final TextEditingController _time = TextEditingController();

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 40.0),
                  child: Image.asset('assets/images/Hey Piggy.png', scale: 2.0,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text("How much do you want to save?"),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Container(
                  padding: EdgeInsets.only(top: 23.0),
                  child: TextField(
                    controller: _time,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      labelText: 'Value',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: ElevatedButton(onPressed: (){

                  },
                    child: Text('Next'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
