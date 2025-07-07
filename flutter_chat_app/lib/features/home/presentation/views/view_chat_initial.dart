import 'package:flutter/material.dart';

class ViewChatInitial extends StatelessWidget {
  const ViewChatInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: _InitialBubble(),
        ),
      ],
    );
  }
}

class _InitialBubble extends StatelessWidget {
  const _InitialBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(
        "Hola, ¿en qué puedo ayudarte hoy?",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );
  }
}
