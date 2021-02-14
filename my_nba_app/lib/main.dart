import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My NBA App',
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
  

  static List<Widget> _widgetOptions = <Widget>[
    Actu(),
    Score(),
    Classement(),
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
        title: const Text('Quibi NBA App'),
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
class Actu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  const List<String> entries = <String>[
'Westbrook fait taire ses détracteurs', 
'Un Jokic en mode MVP', 
'Pourquoi Jaylen Brown est un titulaire indicsutable des All Stars ',
'Qui Gagne un 2v2 Barbac/Quibi contre Carpac/Titou ?'
];
  
//final List<int> colorCodes = <int>[600, 500, 100, 50];

 return Column(
   children:<Widget>[
   Expanded(
   child: ListView.separated(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      
      color: Colors.lightBlue[600],
      child: Center(child: 
        Text(
        entries[index],
        style: TextStyle(fontWeight: FontWeight.bold)
        )
      ),
    );
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(),
),),
  Expanded(
    child: Container(
      padding: const EdgeInsets.all(8),
      color: Colors.lightBlue[600],
      height: 200,
      child : Column(
      children:<Widget>[
        Expanded(
          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Kevin_Durant_jumpshot.jpg/1024px-Kevin_Durant_jumpshot.jpg',
          )),
        Expanded(
          child: Text('Les Brooklyn Nets gagnent facilement Contre le Warriors grâce à un grand Durant',
          style: TextStyle(fontWeight: FontWeight.bold)
          padding: const EdgeInsets.all(8),
          )
        ),
      ],

    ),
  ),),
  ],
 );


}
}
class Score extends StatelessWidget {

@override
Widget build(BuildContext context) {
final List<Image> image_exterieur = <Image> [
    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Brooklyn_Nets_newlogo.svg/198px-Brooklyn_Nets_newlogo.svg.png'),
    Image.network('https://upload.wikimedia.org/wikipedia/fr/0/06/Cavs_de_Cleveland_logo_2017.png'),
    Image.network('https://logos-download.com/wp-content/uploads/2016/04/Utah_Jazz_logo_logotype_emblem_symbol-700x515.png'),
  ];
final List<Image> image_domicile = <Image> [
    Image.network('https://upload.wikimedia.org/wikipedia/fr/thumb/d/d6/Wizards2015.png/150px-Wizards2015.png'),
    Image.network('https://upload.wikimedia.org/wikipedia/fr/thumb/d/d9/Timberwolves_du_Minnesota_logo_2017.png/200px-Timberwolves_du_Minnesota_logo_2017.png'),
    Image.network('https://upload.wikimedia.org/wikipedia/fr/thumb/3/35/Nuggets_de_Denver_2018.png/180px-Nuggets_de_Denver_2018.png'),
  ];
final List<String> entries = <String>[
'Brooklyn Nets  146 -  149  Washington Wizards ', 
'Cleveland Cavaliers  104 - 109  Minnesota Timberwolves', 
'Utah Jazz  117 - 128  Denver Nuggets'
];
final List<int> colorCodes = <int>[600, 400, 100];

 return Column(
   children: <Widget>[
  Container(
      height: 50,
      //color: Colors.indigo[800],
      child: const Center(child: Text(
      'Lundi 1er Février 2021',
      style:  TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
      
      )
      ),
    ),
  Expanded(
    child: ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
    
    return Container(

      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(
          child: Row(
          children: <Widget>[  
          Expanded(
            child : image_exterieur[index],
          ),
          Expanded(
            child: Text(entries[index], textAlign: TextAlign.center),
          ),
          Expanded(
            child : image_domicile[index],
          ),
          ],
        ),
      ),
    );
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(),
),),
   ],
   );
}
}

class Classement extends StatelessWidget {
  final List<String> classement_est = <String>[
    ' 1. Philadelphia Sixers',
    ' 2. Brooklyn Nets',
    ' 3. Milwaukee Bucks',
    ' 4. Boston Celtics',
    ' 5. Indiana Pacers',
    ' 6. Atlanta Hawks',
    ' 7. Cleveland Cavaliers',
    ' 8. Charlotte Hornets',
    ' 9. New York Knicks',
    ' 10. Toronto Raptors',
    ' 11. Chicago Bulls',
    ' 12. Orlando Magic',
    ' 13. Miami Heat',
    ' 14. Detroit Pistons',
    ' 15. Washington Wizards',
  ];
  final List<String> classement_ouest = <String>[
    ' 1. Los Angeles Clippers',
    ' 2. Utah Jazz',
    ' 3. Los Angeles Lakers',
    ' 4. Denver Nuggets',
    ' 5. Memphis Grizzlies',
    ' 6. Phoenix Suns',
    ' 7. Portland Trail Blazers',
    ' 8. Golden State Warriors',
    ' 9. San Antonio Spurs',
    ' 10. Houston Rockets',
    ' 11. Oklahoma Thunder',
    ' 12. Sacramento Kings',
    ' 13. Dallas Mavericks',
    ' 14. New Orleans Pelicans',
    ' 15. Minesota Timberwolves',
  ];
@override
Widget build(BuildContext context) {
  
return Row(
  children: <Widget>[
    Expanded(
      child: Column(

        children: <Widget> [
           Container(
      height: 50,
      color: Colors.indigo,
      child: const Center(child: Text(
      "Classement à L'est",
      style:  TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
      
      )
      ),
    ),
          Expanded(
            child: ListView.separated(
  
    padding: const EdgeInsets.all(8),
    itemCount: classement_est.length,
    itemBuilder: (BuildContext context, int index) {
  
    return Container(
      height: 50,
      child: Center(child: 
      
      Text(classement_est[index])),
    );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),

  
    ),
    ),
        ],
      ),),
    Expanded(
      child: Column(

        children: <Widget> [
          Container(
      height: 50,
      color: Colors.indigo,
      child: const Center(child: Text(
      "Classement à L'ouest ",
      style:  TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
      
      )
      ),
    ),
     Expanded(
      child: ListView.separated(
  
  padding: const EdgeInsets.all(8),
    itemCount: classement_ouest.length,
    itemBuilder: (BuildContext context, int index) {
  
    return Container(
      height: 50,
      child: Center(child: Text(classement_ouest[index])),
    );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),

  
    ),
    ),
        ],),),
  ],
);
}
}
 /* Widget build(BuildContext context) {

  }*/

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