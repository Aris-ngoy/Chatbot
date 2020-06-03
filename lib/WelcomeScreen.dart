import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(98, 42, 232, 1.0),
      body: ListView(
        children:[
          Text("Hello", 
            textAlign: TextAlign.center, 
            style: Theme.of(context).textTheme.title.apply(
              color:Colors.white
            ),
          ),
          Text("John Doe")
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Center(
          child:Icon(Icons.mic)
        ),  
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Material(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            IconButton(icon: Icon(Icons.grid_on), onPressed: (){}),
            IconButton(icon: Icon(Icons.keyboard), onPressed: (){}),
          ]
        )
      )
    );
  }
}