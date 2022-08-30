import 'dart:core';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:whatsappui/models/users.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  @override
  State<Chat> createState() => _ChatState();
}
var textedit;

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Expanded(
            child: ListView.separated(
              itemCount: whatsappcontact.length,
              itemBuilder: (BuildContext context, int index) {
                return Slidable(
                  startActionPane: ActionPane(
                    motion: StretchMotion(),
                    children: [
                      SlidableAction(
                        onPressed: ((context) {}),
                        backgroundColor: Colors.blue,
                        icon: Icons.message,
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(whatsappcontact[index].name),
                    subtitle: Text(whatsappcontact[index].subtitle),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(whatsappcontact[index].pic),
                    ),
                    trailing: Text(whatsappcontact[index].tralingtext),
                  ),
                  endActionPane: ActionPane(
                    motion: StretchMotion(),
                    children: [
                      SlidableAction(
                        onPressed: ((context) {
                          setState(() {
                            whatsappcontact.removeAt(index);
                          });
                        }),
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                      ),

                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          )
        ]));
  }
}
