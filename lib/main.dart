import 'package:flutter/material.dart';

void main() {
  runApp(new ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Chat App",
      home: new ChatScreen(),
    );

  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
  
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Chat App"),
        
      ),
      body: _buildTextComposer(),
    );
  }
   Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(
          hintText: "Send a message"
        ),
      ),
    );
  }
  void _handleSubmitted(String text) {
    _textController.clear();
  }
}