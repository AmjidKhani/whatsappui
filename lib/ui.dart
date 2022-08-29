import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/pages/calls.dart';
import 'package:whatsappui/pages/camera.dart';
import 'package:whatsappui/pages/chat.dart';
import 'package:whatsappui/pages/group.dart';
import 'package:whatsappui/pages/status.dart';
import 'package:whatsappui/popupscreen.dart';


class whatsappui extends StatefulWidget {
  const whatsappui({Key? key}) : super(key: key);

  @override
  State<whatsappui> createState() => _whatsappuiState();
}
TabController? controller;
class _whatsappuiState extends State<whatsappui>
    with SingleTickerProviderStateMixin {
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff11887A),
        elevation: 0,
        title: Text(
          "Whatsapp",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [

          IconButton(
              onPressed: () {}, icon: Icon(Icons.airplanemode_off_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.wb_sunny_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          popup(),
        ],
        bottom: TabBar(
          physics: BouncingScrollPhysics(),
          //indicatorSize: TabBarIndicatorSize.label,
          //indicatorPadding: EdgeInsets.only(left: 30,),
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          isScrollable: true,
          indicatorPadding: EdgeInsets.only(top: 20),
          controller: controller,
          tabs: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 25,
              ),
            ),
            Text("Chat", style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Group", style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Status", style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Calls", style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
      body:  Container(
         // height: 12,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBarView(
                physics: BouncingScrollPhysics(),
                controller: controller,
                children: [
                  camera(),
                  Chat(),
                  group(),
                  status(),
                  calls(),
                ]),
          ),
        ),

    );
  }
}
