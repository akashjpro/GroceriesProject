import 'package:flutter/material.dart';
import 'package:groceries_app/ui/explore.dart';
import 'package:groceries_app/ui/favorites.dart';
import 'package:groceries_app/ui/homeScreen.dart';
import 'package:groceries_app/ui/myCart.dart';
final bg_coler = Color(0xffFCFCFC);
class NavigationBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bottomNavigationBarState();
  }
}
class bottomNavigationBarState extends State<NavigationBar>{
  int _selectedIndex = 0;
  final List<Widget> _children = [myHomeScreen(),myExplore(),myCart(),myFavorites(),myHomeScreen()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(color: bg_coler),
        child: Scaffold(
          body: _children[_selectedIndex],
          bottomNavigationBar: Container(
              height: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(color: Colors.black38, spreadRadius: -12, blurRadius: 37),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),child:BottomNavigationBar(
                currentIndex: _selectedIndex,
                backgroundColor: Color(0xffFFFFFF),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedLabelStyle: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff53b175),
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
                selectedItemColor:Color(0xff53b175),
                unselectedItemColor:Color(0xff181725),
                type: BottomNavigationBarType.fixed,
                onTap: _onItemTapped,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                        margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 5),
                        padding: EdgeInsets.all(0),
                        child:Image.asset('images/icon_store.png',color: _selectedIndex==0 ? Color(0xff53b175) :Color(0xff181725) )
                    ),
                    label: 'Store',
                  ),
                  BottomNavigationBarItem(
                    icon:  Container(
                        margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 5),
                        padding: EdgeInsets.all(0),
                        child:Image.asset('images/icon_explore.png',color: _selectedIndex==1 ? Color(0xff53b175) :Color(0xff181725) )
                    ),
                    label: 'Explore',
                  ),
                  BottomNavigationBarItem(
                    icon:  Container(
                        margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 5),
                        padding: EdgeInsets.all(0),
                        child:Image.asset('images/icon_cart.png',color: _selectedIndex==2 ? Color(0xff53b175) :Color(0xff181725) )
                    ),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon:  Container(
                        margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 5),
                        padding: EdgeInsets.all(0),
                        child:Image.asset('images/icon_favourite.png',color: _selectedIndex==3 ? Color(0xff53b175) :Color(0xff181725) )
                    ),
                    label: 'Favourite',
                  ),
                  BottomNavigationBarItem(
                    icon:  Container(
                        margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 5),
                        padding: EdgeInsets.all(0),
                        child:Image.asset('images/icon_account.png',color: _selectedIndex==4 ? Color(0xff53b175) :Color(0xff181725) )
                    ),
                    label: 'Account',
                  ),
                ],
              ),
              )
          ),
        ),
      )
    );
  }

}