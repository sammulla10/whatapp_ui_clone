import 'package:flutter/material.dart';
import 'package:whatapp_ui_clone/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummy.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 8,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundImage: NetworkImage(dummy[i].avatarUrl),
                  ),
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dummy[i].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          dummy[i].time,
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ]),
                  subtitle: Container(padding: EdgeInsets.only(top: 4),
                  child: Text(dummy[i].message,style: TextStyle(color: Colors.grey, fontSize: 15),),),
                )
              ],
            ));
  }
}
