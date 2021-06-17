import 'package:flutter/material.dart';
import 'package:groceries_app/ui/bottomNavigationBar.dart';
void main()=>runApp(new myExplore());
final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
class myExplore extends StatelessWidget {
  Widget searchSection = new Container(
    margin: EdgeInsets.symmetric(horizontal: 24.71),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search Store',
        hintStyle: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: Color(0xff7c7c7c),
        ),
        prefixIcon: Image.asset('images/icon_search.png'),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xfff2f3f2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xfff2f3f2)),
        ),
        contentPadding: EdgeInsets.only(left: 15,right: 15),
        filled: true,
        fillColor: Color(0xfff2f3f2),
      ),
    ),
  );
  static Container _itemGrid(String name,String img,Color myColor){
    return new Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18.0)),
            border: Border.all(color: myColor),
            color: myColor.withOpacity(0.25)
        ),
        child:SizedBox(
            width: 174.5,
            height: 189.11,
            child: InkWell(
                onTap: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(img,width:99.89,height: 79.43,fit: BoxFit.cover,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 27.52),
                      child: Text(name,maxLines:2,
                          textAlign: TextAlign.center,style:
                      TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff181725),
                      ),),
                    ),],
                )
            )
        )
    );
  }
  Widget gridViewSection = new Container(
    padding: EdgeInsets.only(left: 20.5,right:20.5,top: 20),
    child: GridView.count(
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 15.0,
      crossAxisCount: 2,childAspectRatio: (174.5 / 189.11),
      children:[
        _itemGrid('Frash Fruits & Vegetable','images/img_vegetable.png',Color(0xff53b175)),
        _itemGrid('Cooking Oil & Ghee', 'images/img_oil.png',Color(0xfff8a44c)),
        _itemGrid('Meat & Fish', 'images/img_meal.png',Color(0xfff7a593)),
        _itemGrid('Bakery & Snack', 'images/img_snack.png',Color(0xffD3B0E0)),
        _itemGrid('Dairy & Eggs', 'images/img_eggs.png',Color(0xfffde598)),
        _itemGrid('Beverages', 'images/img_drink.png',Color(0xffb7dff5)),
        _itemGrid('Frash Fruits & Vegetable','images/img_vegetable.png',Color(0xff53b175)),
        _itemGrid('Cooking Oil & Ghee', 'images/img_oil.png',Color(0xfff8a44c)),
        _itemGrid('Meat & Fish', 'images/img_meal.png',Color(0xfff7a593)),
        _itemGrid('Bakery & Snack', 'images/img_snack.png',Color(0xffD3B0E0)),
        _itemGrid('Dairy & Eggs', 'images/img_eggs.png',Color(0xfffde598)),
        _itemGrid('Beverages', 'images/img_drink.png',Color(0xffb7dff5)),
      ],
    )
  );
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return MaterialApp(
          title: 'My Sign In',
          home: Container(
            decoration: BoxDecoration(color: bg_coler),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: bg_coler,
                centerTitle: true,
                elevation: 0,
                title: Text(
                  'Find Products',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    color: title_coler
                  ),
                ),
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    searchSection,
                    Expanded(child: gridViewSection),
                  ],
                ),
              ),
              bottomNavigationBar: bottomNavigationBar(1),
            ),
          )
      );
  }
}