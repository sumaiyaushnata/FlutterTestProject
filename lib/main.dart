import 'package:flutter/material.dart';
import 'package:foodapp/FirstPageContainer.dart';
import 'package:foodapp/SndPageContainerColor.dart';
import 'package:foodapp/ThirdPageContainerColor.dart';
import 'package:foodapp/login.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
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

class ListViewLikeColumn extends StatelessWidget {
  const ListViewLikeColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.greenAccent,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.lightGreenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResponsiveWindowMediaQuery extends StatelessWidget {
  const ResponsiveWindowMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Responsive")),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.amberAccent,
              child: const Center(
                child: Text("Responsive"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StackBody extends StatelessWidget {
  //
  const StackBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Body in body"),
          ),
          body: Center(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Color.fromARGB(255, 45, 172, 45),
                  alignment: Alignment.center,
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color.fromARGB(255, 228, 18, 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageShow extends StatelessWidget {
  const ImageShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            // child: Image.asset("images/pro.jpg"),
            child: Image.network(
              "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80",
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
        ),
      ),
    );
  }
}

class MyRowingScrolling extends StatelessWidget {
  const MyRowingScrolling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Row")),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.amber,
                  height: double.infinity,
                  width: 100,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: double.infinity,
                  width: 100,
                ),
                Container(
                  color: Colors.blue,
                  height: double.infinity,
                  width: 100,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: double.infinity,
                  width: 100,
                ),
                Container(
                  color: Colors.blueGrey,
                  height: double.infinity,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoRowingScrolling extends StatelessWidget {
  const NoRowingScrolling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Row")),
          body: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  height: double.infinity,
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amberAccent,
                  height: double.infinity,
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: double.infinity,
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blueAccent,
                  height: double.infinity,
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                  height: double.infinity,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTileWith extends StatelessWidget {
  const ListTileWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("List Tile")),
          body: ListView(
            children: [
              ListTile(
                title: Text("List Title1"),
                subtitle: Text("List title description"),
                leading: CircleAvatar(
                  //left side icon
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(
                  //right side icon
                  Icons.call_made_rounded,
                  size: 30,
                  color: Colors.redAccent,
                ),
              ),
              ListTile(
                title: Text("List Title2"),
                subtitle: Text("List title description"),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(
                  Icons.call_made_rounded,
                  size: 30,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text("List Title3"),
                subtitle: Text("List title description"),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(
                  Icons.call_made_rounded,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageColorChangeSlideView extends StatelessWidget {
  const PageColorChangeSlideView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.deepOrangeAccent,
        child: Center(child: Text("Ist Page...............")),
      ),
      Container(
        color: Colors.amber,
        child: Center(child: Text("2nd Page...............")),
      ),
      Container(
        color: Colors.amberAccent,
        child: Center(child: Text("3rd Page...............")),
      )
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("change Page"),
          ),
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}

class ListOfPageChanging extends StatelessWidget {
  final page = [
    FirstPage(),
    SndPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(title: Text("changes page")),
        body: LiquidSwipe(pages: page),
      )),
    );
  }
}

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Grid View")),
          body: Padding(
            padding: EdgeInsets.all(6.0),
            child: GridView.count(
              mainAxisSpacing: 8,
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Color.fromARGB(255, 193, 127, 107),
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Color.fromARGB(255, 190, 205, 233),
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
