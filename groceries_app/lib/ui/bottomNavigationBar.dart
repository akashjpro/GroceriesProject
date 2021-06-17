import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget{
  int currentIndex = 0 ;
  bottomNavigationBar(this.currentIndex);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
        currentIndex: currentIndex,
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
        items: [
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(bottom: 5),
              child:currentIndex == 0 ? Image.asset('images/icon_store_selected.png') : Image.asset('images/icon_store.png'),
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon:  Container(
              margin: EdgeInsets.only(bottom: 5),
              child:currentIndex == 1 ? Image.asset('images/icon_explore_selected.png') : Image.asset('images/icon_explore.png'),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon:  Container(
              margin: EdgeInsets.only(bottom: 5),
              child:currentIndex == 2 ? Image.asset('images/icon_cart_selected.png') : Image.asset('images/icon_cart.png'),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon:  Container(
              margin: EdgeInsets.only(bottom: 5),
              child:currentIndex == 3 ? Image.asset('images/icon_favorite_selected.png') : Image.asset('images/icon_favourite.png'),
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon:  Container(
              margin: EdgeInsets.only(bottom: 5),
              child:currentIndex == 4 ? Image.asset('images/icon_user_selected.png') : Image.asset('images/icon_account.png'),
            ),
            label: 'Account',
          ),
        ],
      ),
      )
    );
  }

}