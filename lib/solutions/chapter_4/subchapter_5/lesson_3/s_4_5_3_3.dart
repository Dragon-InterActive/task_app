import 'package:flutter/material.dart';

class S4533 extends StatelessWidget {
  const S4533({super.key});
  @override
  Widget build(BuildContext context) {
    return CenterColumn();
  }
}

class CenterColumn extends StatelessWidget {
  const CenterColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("App"),
          Text("Akademie"),
        ],
      ),
    );
  }
}
