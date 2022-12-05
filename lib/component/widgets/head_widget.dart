import 'package:flutter/material.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 30, bottom: 20),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              'Muhammed Maher',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}