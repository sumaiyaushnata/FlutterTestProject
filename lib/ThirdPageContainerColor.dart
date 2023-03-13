import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 196, 221, 242),
      child: const Center(
        child: Text(
          "Third Page",
          style: TextStyle(
              color: Colors.pink, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
