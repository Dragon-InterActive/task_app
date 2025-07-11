import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});
  @override
  Widget build(BuildContext context) {
    return ContainerColors();
  }
}

class ContainerColors extends StatelessWidget {
  const ContainerColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.blueGrey,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.cyan,
        ),
      ],
    );
  }
}
