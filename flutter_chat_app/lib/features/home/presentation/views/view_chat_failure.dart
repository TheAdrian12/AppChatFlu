import 'package:flutter/material.dart';

class ViewChatFailure extends StatelessWidget {
  final String error;

  const ViewChatFailure({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.error_outline, color: Colors.red),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            error,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
