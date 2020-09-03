import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
//
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index){
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final _listPage = <Widget>[
      Text('Halaman Home'),
      Text('Halaman Favorite'),
      Text('Halaman Profile')
    ];

    final _bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text('Favorite'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Profile')
      )
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavigationBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: Center(
       child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );

  }
}
