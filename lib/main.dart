import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_bottomnavbar.dart';

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

  bool isDelayed = false;

  @override
  void initState()  {
    delay();
    super.initState();
  }

  void delay() async{
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      isDelayed = true;
    });
    print('printing after 3 seconds');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(FontAwesomeIcons.youtube, color: Colors.red,),
            SizedBox(width: 5.0,),
            Text('Youtube', style: TextStyle(fontSize: 22.0, fontFamily: 'Open Serif'),)
          ],
        ),
        actions: [
          IconButton(onPressed: () {print('cast icon pressed');}, icon: Icon(Icons.cast), iconSize: 24,),
          IconButton(onPressed: () {print('notification icon pressed');}, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: () {print('search icon pressed');}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {print('account icon pressed');}, icon: Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/image.jpg'), fit: BoxFit.fill)
                  ),
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(maxRadius: 20.0, backgroundImage: AssetImage('assets/images/youtube.png'), backgroundColor: Colors.transparent,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Race Highlights | 2021 Bahrain Grand Prix', overflow: TextOverflow.fade, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('FORMULA 1 | 79lakh views | 4 months ago '),

                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/youtube.png'), fit: BoxFit.fill)
                  ),
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(maxRadius: 20.0, backgroundImage: AssetImage('assets/images/youtube.png'), backgroundColor: Colors.transparent,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Race Highlights | 2021 Bahrain Grand Prix', overflow: TextOverflow.fade, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('FORMULA 1 | 79lakh views | 4 months ago '),

                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/youtube.png'), fit: BoxFit.fill)
                  ),
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(maxRadius: 20.0, backgroundImage: AssetImage('assets/images/youtube.png'), backgroundColor: Colors.transparent,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Race Highlights | 2021 Bahrain Grand Prix', overflow: TextOverflow.fade, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('FORMULA 1 | 79lakh views | 4 months ago '),

                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/youtube.png'), fit: BoxFit.fill)
                  ),
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(maxRadius: 20.0, backgroundImage: AssetImage('assets/images/youtube.png'), backgroundColor: Colors.transparent,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Race Highlights | 2021 Bahrain Grand Prix', overflow: TextOverflow.fade, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text('FORMULA 1 | 79lakh views | 4 months ago '),

                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),




            //isDelayed ? Text('message after 5 seconds') : CircularProgressIndicator(),

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}





