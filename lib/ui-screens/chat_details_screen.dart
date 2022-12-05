import 'package:flutter/material.dart';

import '../component/widgets/head_widget.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292F3F),
      body: Column(
        children:  const [
         HeadWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: ChatMassages(),
            ),
          ),
          SizedBox(height: 10,),
          SendingWidget() ,
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}


class SendingWidget extends StatelessWidget {
  const SendingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'write',
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: Container(
                  width: 50,
                  height: 50,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(12) ,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(5),
                  child: const Center(
                    child: Icon(
                      Icons.wechat,
                      color: Colors.white,
                    ),
                  ),
                ),
                fillColor: const Color(0xff202532),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color(0xff202532),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class ChatMassages extends StatelessWidget {
  const ChatMassages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'yes',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'bye',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'yes',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'bye',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'yes',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'bye',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'yes',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'bye',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-.95,0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff373E4E),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 70, left: 10 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'yes',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(.95,0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff272A35),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(right: 10, left: 70 , top: 5 , bottom: 5),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'bye',
              style: TextStyle(fontSize: 13, color: Colors.white, height: 1.2),
            ),
          ),
        ),
      ],
    );
  }
}
