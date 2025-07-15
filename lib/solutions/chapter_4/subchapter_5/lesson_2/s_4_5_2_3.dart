import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});
  @override
  Widget build(BuildContext context) {
    return MyNameWidget();
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override
  State<MyNameWidget> createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<MyNameWidget> {
  String _name = '';

  void onPressed() {
    setState(() {
      _name = 'Nemo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: Row(
            children: [Text(_name)],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: Row(
            children: [
              ElevatedButton(onPressed: onPressed, child: Text('Name anzeigen'))
            ],
          ),
        ),
      ],
    );
  }
}
