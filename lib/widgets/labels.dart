import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({
    super.key,
    required this.route,
    required this.title,
    required this.subTitle,
  });

  final String route;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(
              subTitle,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
