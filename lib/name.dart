import 'package:flutter/material.dart';
import 'goal.dart';

void main() {
  runApp(NameForm());
}

class NameForm extends StatefulWidget {
  const NameForm({Key? key}) : super(key: key);

  @override
  State<NameForm> createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {

final TextEditingController _name = TextEditingController();
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
                    child: Stack(
                      children: [
                        Image.asset('assets/images/Last Piggy.png', scale: 2.0,),
                        Text('BLABLABLA')
                      ],
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text("What's Your Name?"),
                  ),

              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                  Container(
                    padding: EdgeInsets.only(top: 23.0),
                    child: TextField(
                      controller: _name,
                      decoration: InputDecoration(
                          border:OutlineInputBorder(),
                          labelText: 'Enter your name',
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GoalForm()));
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
