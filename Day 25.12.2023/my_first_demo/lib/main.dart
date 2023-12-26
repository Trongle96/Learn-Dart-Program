import 'package:flutter/material.dart';

void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Homepage', style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            width: 410,
            height: 610,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('folder_anh/igame_1.jpg'),fit: BoxFit.cover)
            ),
            child: Center(
              child: Text('Hello chelsea fans',style: TextStyle(color: Colors.white, fontSize: 40,),
              ),
            ),
        ),
       ),
      )
    );
  }
}

