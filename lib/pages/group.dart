import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class group extends StatefulWidget {
  const group({Key? key}) : super(key: key);

  @override
  State<group> createState() => _groupState();
}

class _groupState extends State<group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Center(child: Text("Group screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ])
    );
  }
}
