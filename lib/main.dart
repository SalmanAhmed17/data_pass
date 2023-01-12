import 'package:flutter/material.dart';

void main() {
  runApp(DataPass());
}

class DataPass extends StatelessWidget {
  const DataPass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton.icon(
          icon: Icon(Icons.home_max_outlined),
          label: Text("Go to Activity 1"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HomeActivity1("This is from Home Activity 2"),
                ));
          },
          // child: Text("Go to Activity 1")),
        ),
        ElevatedButton.icon(
          icon: Icon(Icons.home), label: Text("Go to Activity 2"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HomeActivity2("This is from Home Activity 2"),
                ));
          },
          // child: Text("Go to Activity 2")),
        ),
      ]),
    );
  }
}

class HomeActivity1 extends StatelessWidget {
  String msg;
  HomeActivity1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
    );
  }
}

class HomeActivity2 extends StatelessWidget {
  String msg;
  HomeActivity2(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
    );
  }
}
