import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña TabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //indicatorColor: Color(0xffc586a5),
            //indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 10,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff81235c)), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.cake_outlined)),
              Tab(icon: Icon(Icons.menu_book)),
              Tab(icon: Icon(Icons.store)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
          centerTitle: true,
          title: Text('Suspiros'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.cake_outlined, size: 350),
            Icon(Icons.menu_book, size: 350),
            Icon(Icons.store, size: 350),
            Icon(Icons.settings, size: 350),
          ],
        ), //Body
      ),
    );
  } //Widget
} //_MyHomePageState extends
