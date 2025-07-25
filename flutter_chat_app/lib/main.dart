import 'package:flutter/material.dart';
import 'package:flutter_chat_app/features/home/presentation/views/view_chat_failure.dart';
import 'package:flutter_chat_app/features/home/presentation/views/view_chat_loading.dart';
import 'package:flutter_chat_app/features/home/presentation/views/view_chat_succes.dart';
import 'features/home/presentation/views/view_chat_initial.dart';
import 'features/home/presentation/blocs/home_event.dart';
import 'features/home/presentation/blocs/home_bloc.dart';
import 'features/home/presentation/blocs/home_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Chat App', 
    home: ChatSuccess());
  }
}
