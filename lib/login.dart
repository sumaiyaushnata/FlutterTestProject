import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("login")),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                )
                // Row(
                //   children: [
                //     Container(
                //       child: TextField(autofocus: true),
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
