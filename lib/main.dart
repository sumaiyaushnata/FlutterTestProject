import 'package:flutter/material.dart';

void main() {
  runApp(MyRow());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTheme(),
      debugShowCheckedModeBanner: false,
      //  Text("testing------------------")
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}

MyToastPopup(String message, BuildContext context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}

class MyTheme extends StatelessWidget {
  MyToast(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("FoodApp"),
          titleSpacing: 0,
          centerTitle: true,
          toolbarHeight: 60, //default height 60;;like padding

          toolbarOpacity: 0.5, //title text color
          elevation: 10, //shadow
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  print("Account Name");
                },
                icon: Icon(Icons.account_box_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.accessibility_new))
          ]),
      body: Container(child: Text("Hello Sumaiya")),
      drawer: Column(children: [
        Container(
            height: 100.0,
            width: 500,
            color: Colors.blue,
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm))),
        Container(
          height: 100.0,
          width: 500,
          color: Colors.orange,
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyToast("Are u Sumaiya??????", context);
          MyToastPopup("NO", context);

          print("Floating action");
        },
        child: Text("Click"),
        backgroundColor: Colors.brown,
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyTable"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.amber,
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Color.fromARGB(255, 255, 64, 169),
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Row"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                //Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
