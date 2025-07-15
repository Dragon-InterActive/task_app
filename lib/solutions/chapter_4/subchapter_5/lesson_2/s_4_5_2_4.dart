import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = '';
  String _btnName = 'Name anzeigen';

  void onPressed() {
    setState(() {
      _name = _name == '' ? 'Nemo' : '';
      _btnName =
          _btnName == 'Name anzeigen' ? 'Name verstecken' : 'Name anzeigen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: Text(_name),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: ElevatedButton(onPressed: onPressed, child: Text(_btnName)),
        ),
      ],
    );
  }
}
