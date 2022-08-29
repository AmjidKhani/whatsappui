import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Center(child: Text("Status screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ])
    );
  }
}
