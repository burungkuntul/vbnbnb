import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Alignment'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFDFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.shopping_bag, color: Color.fromARGB(255, 64, 35, 123)),
          onPressed: () {},
        ),
        title: const Text(
          'Products',
          style: TextStyle(color: Color.fromARGB(255, 64, 35, 123), fontSize: 27, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (content, index) {
            return Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network(
                        "https://cf.shopee.co.id/file/92267c48c515217237348402595f3b7e",
                        height: 500.0,
                      ),
                    ),
                    title: Text(
                      "Kaos Maiyah",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      "Maiyah",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )));
          }),
    );
  }
}
