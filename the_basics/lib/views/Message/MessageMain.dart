
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ChatModel.dart';

class MessageScreen extends StatefulWidget {
  @override
  MessageScreenState createState() => MessageScreenState();
}

class MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black
        ),
        backgroundColor:Colors.white,
        title: Text('Messages',
        style:TextStyle(color:Colors.black,
          fontWeight:FontWeight.bold,

        )

        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                    // // backgroundImage: new NetworkImage(_model.avatarUrl),
                     backgroundImage: AssetImage('assets/australia.jpg'),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.name),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18.0,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}