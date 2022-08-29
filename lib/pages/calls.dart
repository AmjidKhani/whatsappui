import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calls extends StatefulWidget {
  const calls({Key? key}) : super(key: key);

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:


Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Expanded(
            child: ListView(
              children: [
                Card(
                  child:
                    ListTile(
                      title:Text('Ali') ,
                      subtitle: Text("kasda ho yar"),
                      leading: CircleAvatar(
                        radius: 20,

                      ),
                      trailing: Text("3:07 Pm"),
                    )
                ),
                Card(
                    child:
                    ListTile(
                      title:Text('Ali') ,
                      subtitle: Text("kasda ho yar"),
                      leading: CircleAvatar(
                        radius: 20,

                      ),
                      trailing: Text("3:07 Pm"),
                    )
                ),
                Card(
                    child:
                    ListTile(
                      title:Text('Ali') ,
                      subtitle: Text("kasda ho yar"),
                      leading: CircleAvatar(
                        radius: 20,

                      ),
                      trailing: Text("3:07 Pm"),
                    )
                ),
                Card(
                    child:
                    ListTile(
                      title:Text('Ali') ,
                      subtitle: Text("kasda ho yar"),
                      leading: CircleAvatar(
                        radius: 20,

                      ),
                      trailing: Text("3:07 Pm"),
                    )
                )
              ],
            ),
          )

   ])
    );
  }
}
