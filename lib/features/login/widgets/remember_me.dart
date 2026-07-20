import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value ?? false;
            });
          },
        ),
        const Text("Ingat Saya"),
      ],
    );
  }
}
