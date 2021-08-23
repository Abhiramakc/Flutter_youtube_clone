import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'appbar_icon.dart';
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
  bool isDelayed = true;

  @override
  void initState() {
    delay();
    super.initState();
  }

  void delay() async {
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      isDelayed = false;
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
            Icon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'YouTube',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Open Serif'),
            )
          ],
        ),
        actions: [

          AppbarIcon(Icon(Icons.cast),  () {
            print('cast icon pressed');
          }),
          AppbarIcon(Icon(Icons.notifications_none),  () {
            print('notification icon pressed');
          }),
          AppbarIcon(Icon(Icons.search),  () {
            print('search icon pressed');
          }),
          AppbarIcon(Icon(Icons.person),  () {
            print('account icon pressed');
          }),

        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: isDelayed
              ? Container(
                  height: MediaQuery.of(context).size.height * 0.90,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                )
              : Column(
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
                              image: DecorationImage(
                                  image: AssetImage('assets/images/image.jpg'),
                                  fit: BoxFit.fill)),
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
                              CircleAvatar(
                                maxRadius: 18.0,
                                backgroundImage:
                                    AssetImage('assets/images/youtube.png'),
                                backgroundColor: Colors.transparent,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Race Highlights | 2021 Bahrain Grand Prix asdfads',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                          'FORMULA 1 | 79lakh views | 4 months ago ',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13.0
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                              )
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
                              image: DecorationImage(
                                  image: AssetImage('assets/images/ferrari.jpg'),
                                  fit: BoxFit.fill)),
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
                              CircleAvatar(
                                maxRadius: 18.0,
                                backgroundImage:
                                AssetImage('assets/images/youtube.png'),
                                backgroundColor: Colors.transparent,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Race Highlights | 2021 Bahrain Grand Prix asdfads',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'FORMULA 1 | 79lakh views | 4 months ago ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                              )
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
                              image: DecorationImage(
                                  image: AssetImage('assets/images/mercedes.jpg'),
                                  fit: BoxFit.fill)),
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
                              CircleAvatar(
                                maxRadius: 18.0,
                                backgroundImage:
                                AssetImage('assets/images/youtube.png'),
                                backgroundColor: Colors.transparent,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Race Highlights | 2021 Bahrain Grand Prix asdfads',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'FORMULA 1 | 79lakh views | 4 months ago ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                              )
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
                              image: DecorationImage(
                                  image: AssetImage('assets/images/redbull.jpg'),
                                  fit: BoxFit.fill)),
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
                              CircleAvatar(
                                maxRadius: 18.0,
                                backgroundImage:
                                AssetImage('assets/images/youtube.png'),
                                backgroundColor: Colors.transparent,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Race Highlights | 2021 Bahrain Grand Prix asdfads',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'FORMULA 1 | 79lakh views | 4 months ago ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),

                  ],
                ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
