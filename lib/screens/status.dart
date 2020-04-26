import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: SizedBox(
            height: 70,
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Icon(
                  Icons.account_circle,
                  size: 50,
                ),
              ),
              title: Text(
                'My status',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              subtitle: Text('Tap to add status update'),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border(
              top: BorderSide(
                color: Colors.grey[300],
              ),
            ),
          ),
          padding: EdgeInsets.only(left: 15),
          height: 40,
          width: double.infinity,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Viewed updates',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
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
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        subtitle: Text('${dummy[i].time}, 20:19'))
                  ],
                );
              },
              itemCount: dummy.length),
        ),
      ],
    );
  }
}
