import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(FontAwesomeIcons.youtube, color: Colors.red,),
            SizedBox(width: 5.0,),
            Text('Youtube', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, fontFamily: 'Open Sans'),)
          ],
        ),
        actions: [
          IconButton(onPressed: () {print('cast icon pressed');}, icon: Icon(Icons.cast), iconSize: 24,),
          IconButton(onPressed: () {print('notification icon pressed');}, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: () {print('search icon pressed');}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {print('account icon pressed');}, icon: Icon(Icons.person)),
        ],
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

    );
  }
}
