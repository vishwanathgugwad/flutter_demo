import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/account_page.dart';
import 'package:flutter_demo/pages/favorites_page.dart';
import 'package:flutter_demo/pages/blogs_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController _pageController = PageController();

    int _selectedIndex = 0;
    static const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

    static const List<Widget> _screens = <Widget>[
      BlogsPage(),
      FavoritesPage(),
      AccountPage()
    ];


void _onPageChanged(int selectedindex){
  setState(() {
    _selectedIndex = selectedindex;

  });
}
    void _onItemTapped(int selectedindex) {
  setState(() {
    _selectedIndex = selectedindex;
  });

     _pageController.jumpToPage(selectedindex);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Posts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              label: 'Social',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepPurple,
          onTap: _onItemTapped,
        ),
      );
    }
  }

