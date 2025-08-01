import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String uid;
  final AnimationController animationController;

  const ChatMessage({
    super.key,
    required this.text,
    required this.uid,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
      child: FadeTransition(
        opacity: animationController,
        child: Container(child: uid == '123' ? _myMessage() : _notMyMessage()),
      ),
    );
  }

  Widget _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 5, right: 5, left: 50),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xff4D9EF6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 5, right: 50, left: 5),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xffE4E5E8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(text, style: TextStyle(color: Colors.black87)),
      ),
    );
  }
}
