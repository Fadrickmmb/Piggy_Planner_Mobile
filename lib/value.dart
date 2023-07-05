import 'package:flutter/material.dart';
import 'time.dart';

void main() {
  runApp(ValueForm());
}

class ValueForm extends StatefulWidget {
  const ValueForm({Key? key}) : super(key: key);

  @override
  State<ValueForm> createState() => _ValueFormState();
}

class _ValueFormState extends State<ValueForm> {

  final TextEditingController _value = TextEditingController();

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
                    controller: _value,
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimeForm()));
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
