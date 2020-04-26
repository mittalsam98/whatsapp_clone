import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
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
                    subtitle: Row(
                      children: <Widget>[
                        Icon(
                          Icons.call_missed_outgoing,
                          color: Color(0xff25D366),
                        ),
                        Text(
                          '${dummy[i].time}, 20:19',
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.videocam,
                      color: Color(0xee075E54),
                    ),
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
