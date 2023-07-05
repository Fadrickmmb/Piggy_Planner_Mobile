import 'package:flutter/material.dart';
import 'value.dart';

void main() {
  runApp(GoalForm());
}

class GoalForm extends StatefulWidget {
  const GoalForm({Key? key}) : super(key: key);

  @override
  State<GoalForm> createState() => _GoalFormState();
}

class _GoalFormState extends State<GoalForm> {

  final TextEditingController _goal = TextEditingController();
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
                  child: Text("What's Your Goal?"),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Container(
                  padding: EdgeInsets.only(top: 23.0),
                  child: TextField(
                    controller: _goal,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      labelText: 'Goal',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ValueForm()));
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
