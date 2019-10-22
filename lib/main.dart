import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedFood = "BURGER";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 450.0,
              ),
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'images/addisababa.jpg',
                  height: 350.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'ETHIOPIA',
                  style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white.withOpacity(0.2),
                      letterSpacing: .0),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 24.0,
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 22.0,
                child: Container(
                  height: 12.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                      color: Colors.green),
                ),
              ),
              Positioned(
                top: 250.0,
                left: 40.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      'WELCOME TO',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 280.0,
                left: 40.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'ADDIS ABABA',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD3664),
                          ),
                        ),
                        Text(
                          ',',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD3664),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'ETHIOPIA',
                          style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 370.0,
                left: 25.0,
                right: 25.0,
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF262626),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Lets explore some food here...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('BURGER', Icons.fastfood),
              _buildMenuItem('COFFEE', Icons.local_cafe),
              _buildMenuItem('BEER', Icons.local_bar),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('CAKE', Icons.cake),
              _buildMenuItem('GROCERY', Icons.local_grocery_store),
              _buildMenuItem('DOUNT', Icons.donut_small),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('TRADITIONAL', Icons.cake),
              _buildMenuItem('ICECREAM', Icons.local_grocery_store),
              _buildMenuItem('QOLOS', Icons.panorama_fish_eye),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(String foodName, IconData iconData) {
    selectMenuOption(String foodName) {
      setState(() {
        selectedFood = foodName;
      });
    }

    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        selectMenuOption(foodName);
      },
      child: AnimatedContainer(
        curve: Curves.easeInQuad,
        duration: Duration(milliseconds: 200),
        height: selectedFood == foodName ? 100.0 : 95.0,
        width: selectedFood == foodName ? 100.0 : 85.0,
        color:
            selectedFood == foodName ? Color(0xFFFD3664) : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              color: selectedFood == foodName ? Colors.white : Colors.grey,
              size: 25.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              foodName,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 10.0,
                color: selectedFood == foodName ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
