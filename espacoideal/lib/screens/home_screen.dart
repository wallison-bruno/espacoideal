import 'package:espacoideal/screens/painel_de_Protudos_Screen.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
//import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:espacoideal/widgets/navDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectPage = 0;
  List<Widget> _pageOptions = [
    PainelDeProdutosScreen(),
    Text('Carrinho'),
    Text('Mapa'),
    Text('Mapa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavDrawer(),
      body: _pageOptions[_selectPage],
      bottomNavigationBar:

          // FancyBottomNavigation(
          //   initialSelection: 1,
          //   inactiveIconColor: Color(0xfff5851f),
          //   circleColor: Color(0xfff5851f),
          //   tabs: [
          //     TabData(iconData: Icons.shopping_cart, title: "Carrinho"),
          //     TabData(iconData: Icons.home, title: "Home"),
          //     TabData(iconData: Icons.pin_drop, title: "Encontre-nos")
          //   ],
          //   onTabChangedListener: (position) {
          //     setState(() {
          //       _selectPage = position;
          //     });
          //   },

          //----------------------------------------------------------------------
          FFNavigationBar(
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
        //------------------------------------------------------------------------
        // FFNavigationBarItem(
        //   icon: Icon(
        //     Icons.shopping_cart,
        //     size: 30.0,
        //   ),
        //   title: SizedBox.shrink(),
        // ),
        // FFNavigationBarItem(
        //   icon: Icon(
        //     Icons.pin_drop,
        //     size: 30.0,
        //   ),
        //   title: SizedBox.shrink(),
        // )
      ),
    );
  }
}
