import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Center(child: Text("Camera screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),

    ],

        )
        )
    );
  }
}
