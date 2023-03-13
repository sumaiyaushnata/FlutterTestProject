import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SndPage extends StatelessWidget {
  const SndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 125, 130, 135),
      child: const Center(
        child: Text(
          "Snd Page",
          style: TextStyle(
              color: Colors.pink, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
