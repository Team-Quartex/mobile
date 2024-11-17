import 'package:flutter/material.dart';

class Custombottomnavigationbar extends StatefulWidget {
  const Custombottomnavigationbar({super.key});

  @override
  State<Custombottomnavigationbar> createState() =>
      _CustombottomnavigationbarState();
}

class _CustombottomnavigationbarState extends State<Custombottomnavigationbar> {
  int _selectedIndex = 0;
  double? _deviceHeight, _deviceWidth;
  int val = 2;
  // List of widgets for each page
  final List<Widget> _pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Search Page")),
    Center(child: Text("Profile Page")),
  ];

  // Function to change the selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
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
                      val = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.home_filled),
                      val == 0
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
                      val = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search),
                      val == 1
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
                      val = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      val == 2
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
                      val = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      val == 3
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
          Container(
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
          )
        ],
      ),
    );
  }
}
