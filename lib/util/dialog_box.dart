import 'package:flutter/material.dart';
import 'package:projetc_01/util/my_button.dart';


class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancle;

  const DialogBox({
    Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: 'Nhập nhiệm vụ mới',
        ),
      ),
      actions: [
        TextButton(
          onPressed: onCancle,
          child: const Text('Hủy'),
        ),
        TextButton(
          onPressed: onSave,
          child: const Text('Lưu'),
        ),
      ],
    );
  }
}
