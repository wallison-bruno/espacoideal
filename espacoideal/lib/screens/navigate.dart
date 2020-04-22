import 'package:espacoideal/screens/home_screen/home_screen.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
//import 'package:espacoideal/components/usu_options.dart';
//import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class NavigateScreen extends StatefulWidget {
  @override
  _NavigateScreenState createState() => _NavigateScreenState();
}

class _NavigateScreenState extends State<NavigateScreen> {
  int _selectPage = 0;
  List<Widget> _pageOptions = [
    HomeScreen(),
    Text('page01'),
    Text('page02'),
    Text('page03'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavDrawer(),
      body: _pageOptions[_selectPage],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: Color(0xfff45d27),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Color(0xfff45d27),
        ),
        selectedIndex: _selectPage,
        onSelectTab: (int value) {
          setState(() {
            _selectPage = value;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.shopping_basket,
            label: 'Sacola',
          ),
          FFNavigationBarItem(
            iconData: Icons.pin_drop,
            label: 'Localeze-nos',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Minha conta',
          ),
        ],
      ),
    );
  }
}
