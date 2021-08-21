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
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}












class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  Color selectedItemColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black,blurRadius: 5.0)
          ]
      ),
      child: BottomNavigationBar(
        elevation: 100.0,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline, size: 30.0,), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined,), label: 'Library')
        ],
        onTap: (index) {setState(() {
          selectedIndex = index;
          selectedItemColor = Colors.white;
        });},
        unselectedItemColor: Colors.white54,
        selectedItemColor: selectedItemColor,
      ),
    );
  }
}

