import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/models/users.dart';


class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Expanded(
            child: ListView.separated(
              itemCount:whatsappcontact.length,

              itemBuilder: (BuildContext context, int index)
              {

                return
                    ListTile(
                    title:Text(whatsappcontact[index].name) ,
                subtitle: Text(whatsappcontact[index].subtitle),
                leading: CircleAvatar(
              radius: 20,
backgroundImage: AssetImage(whatsappcontact[index].pic),
              ),
              trailing: Text(whatsappcontact[index].tralingtext),,

                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },

            ),
          )

        ])
    );

  }
}
