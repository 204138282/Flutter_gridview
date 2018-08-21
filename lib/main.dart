import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

/**
 * 目录:
 * 1. GridView
 * 2. ListView
 * 3. Stack
 * 4. Card
 */

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Home Page~',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: '主页-PAGE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      // body: new Center(
      //   child: new ListView(
      //     children: list
      //   ),
      // ),
      body: new Center(child: card),
    );
  }

  /*
  GridView 
  使用方法:
  在_MyHomePageStatebody中修改:
    body: new Center(
      child: buildGrid()
    )
  */
  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
        count,
        (int index) => new Container(
                child: new Image.asset(
              'images/bili${index}.jpg',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            )));
  }

  Widget buildGrid() {
    return new GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(7),
    );
  }

  /**
   ListView
   在_MyHomePageStatebody中修改:
   body: new Center(
      child: new ListView(
        children: list
      ),
    )
   */
  List<Widget> list = <Widget>[
    new ListTile(
      title: new Text("CineArts at the Empire",
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: new Text('85 W Portal Ave'),
      leading: new Icon(Icons.theaters, color: Colors.blue[500]),
    ),
    new ListTile(
      title: new Text('The Castro Theater',
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: new Text('429 Castro St'),
      leading: new Icon(Icons.theaters, color: Colors.blue[500]),
    ),
    new ListTile(
      title: Text('Alamo Drafthouse Cinema',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('2550 Mission St'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: Text('Roxie Theater',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('3117 16th St'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: Text('United Artists Stonestown Twin',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('501 Buckingham Way'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: Text('AMC Metreon 16',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('135 4th St #3000'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    Divider(),
    new ListTile(
      title: Text('K\'s Kitchen',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('757 Monterey Blvd'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: Text('Emmy\'s Restaurant',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('1923 Ocean Ave'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: Text('Chaiya Thai Restaurant',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('272 Claremont Blvd'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: Text('La Ciccia',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('291 30th St'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    )
  ];

  /**
   Stack
   使用方法:
   在_MyHomePageStatebody中修改:
   body: new Center(
      child: stack
   ),
   */
  var stack = new Stack(
    alignment: const Alignment(0.6, 0.6),
    children: <Widget>[
      new CircleAvatar(
          backgroundImage: new AssetImage('images/lake.jpg'), radius: 100.0),
      new Container(
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),
          child: new Text('Mia B',
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)))
    ],
  );

  /**
   * Card
   * 使用方法:
   在_MyHomePageStatebody中修改:
   body: new Center(
      child: card
   )
   */
  var card = new SizedBox(
      height: 210.0,
      child: new Card(
        child: new Column(children: [
          new ListTile(
            title: new Text('1625 Main Street',
                style: new TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('My City, CA 99984'),
            leading: new Icon(
              Icons.restaurant_menu, color: 
              Colors.orange[500]
            ),
          ),
          new Divider(),
          new ListTile(
            title: new Text('(408) 555-1212',
                style: new TextStyle(fontWeight: FontWeight.w500)),
            leading: new Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          new ListTile(
            title: new Text('costa@example.com'),
            leading: new Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ]),
      ));
}
