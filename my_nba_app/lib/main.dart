import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Quibi fucking App',
      theme: ThemeData(          
        primaryColor: Colors.pink[900],
      ),  
      home: MyStatefulWidget()

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //static const Container    
  
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Actu',
      style: optionStyle,
    ),
    Text(
      'Score',
      style: optionStyle,
    ),
    Text(
      'Classement',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quibi fucking App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconData(59322, fontFamily: 'MaterialIcons')),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconData(57401, fontFamily: 'MaterialIcons')),
            label: 'Matchs',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconData(57824, fontFamily: 'MaterialIcons')),
            label: 'Classement',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[900],
        onTap: _onItemTapped,
      ),
    );
  }
}
  /*@override
  ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Bessma fait du canioning')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Bessma à la plage')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Bessma au ski')),
    ),
  ],
) */