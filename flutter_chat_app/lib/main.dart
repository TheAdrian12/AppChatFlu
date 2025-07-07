import 'package:flutter/material.dart';

import 'features/home/presentation/views/view_chat_initial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', 
    home: ViewChatInitial());
  }
}
