import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int i) {
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                    ),
                    title: Text(
                      dummy[i].name,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    subtitle: Text(dummy[i].message),
                    trailing: Text(dummy[i].time),
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 20,
                ),
            itemCount: dummy.length));
  }
}
