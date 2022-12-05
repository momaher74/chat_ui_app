import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sizerpackage/ui-screens/chat_details_screen.dart';
import 'package:sizerpackage/ui-screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: const ChatDetailsScreen() ,
        );
      },
    );
  }
}
