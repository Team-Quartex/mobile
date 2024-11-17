import 'package:flutter/material.dart';
import 'package:trova/Screens/home/AddPost.dart';
import 'package:trova/Screens/home/LandingPage.dart';
import 'package:trova/Screens/home/MarketPage.dart';
import 'package:trova/Screens/home/ProfilePage.dart';
import 'package:trova/Screens/home/SearchPage.dart';
import 'package:trova/widget/CustomBottomNavigationBar.dart';
import '../../model/post_model.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  double? _deviceWidth, _deviceHeight;

  final List<Widget> _pages = [
    Landingpage(),
    Searchpage(),
    Marketpage(),
    Profilepage()
  ];

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Text('Welcome',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
            Text('John Doe',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          _pages[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: _bottomConatiner(),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomConatiner() {
    return Container(
      width: _deviceWidth! * 0.9,
      height: _deviceHeight! * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: _deviceWidth! * 0.7,
            height: _deviceHeight! * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.3), // Shadow color with opacity
                  spreadRadius: 5, // Spread of the shadow
                  blurRadius: 10, // Blur radius
                  offset: Offset(0, 4), // Offset of the shadow (x, y)
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.home_filled),
                      _currentIndex == 0
                          ? Container(
                              color: Colors.red,
                              width: 3,
                              height: 3,
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search),
                      _currentIndex == 1
                          ? Container(
                              color: Colors.red,
                              width: 3,
                              height: 3,
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      _currentIndex == 2
                          ? Container(
                              color: Colors.red,
                              width: 3,
                              height: 3,
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      _currentIndex == 3
                          ? Container(
                              color: Colors.red,
                              width: 3,
                              height: 3,
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Addpost()));
            },
            child: Container(
              width: _deviceHeight! * 0.07,
              height: _deviceHeight! * 0.07,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(35, 134, 136, 1),
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}
