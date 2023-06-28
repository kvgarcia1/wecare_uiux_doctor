import 'package:flutter/material.dart';
import './widgets/conversationList.dart';


class ChatUsers{
  String name;
  String messageText;
  String imageURL;
  String time;
  ChatUsers({required this.name,required this.messageText,required this.imageURL,required this.time});
}


class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);




  @override
  State<MessagesPage> createState() => _MessagesPageState();
}


class _MessagesPageState extends State<MessagesPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Kristine Mae Garcia", messageText: "Got this, Doc! See you later!", imageURL: "assets/images/profile.png", time: "Now"),
    ChatUsers(name: "Ma. Colline Foralan", messageText: "This is noted!", imageURL: "assets/images/profile1.png", time: "Yesterday"),
    ChatUsers(name: "Ian Rodrigo Seguano", messageText: "Click the following link to join", imageURL: "assets/images/profile2.png", time: "1 Jun")
  ];
 
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(fontFamily:'OpenSans',color:Color(0xFF7B7B7B), fontSize: 15),
                  prefixIcon: Icon(Icons.search,color: Color(0xFF7B7B7B), size: 25,),
                  filled: true,
                  fillColor: Color(0xFFE7E9EC),
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Color(0xFFE7E9EC)
                    )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
