import 'package:flutter/material.dart';
import 'package:groceries_app/ui/bottomNavigationBar.dart';
void main() => runApp(new myBeverages());
final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
class myBeverages extends StatelessWidget{
  static Container _itemProduct(String name,String detail,String price,String img){
    return new Container(
        width: 173.32,
        height: 248.51,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18.0)),
            border: Border.all(color: Color(0xffe2e2e2))
        ),
        child:SizedBox(
            width: 173.32,
            height: 267.51,
            child: InkWell(
                onTap: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(img,width: 44.49,height: 89.36,fit: BoxFit.cover,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.26,left: 10),
                      child: Text(name,style:
                      TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff181725),
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 10),
                      child: Text(detail,style:
                      TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7c7c7c),
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(price,style:
                          TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),),
                          FlatButton(
                            color: Color(0xff53B175),
                            onPressed: (){},
                            minWidth: 35.67,
                            height: 35.67,
                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                            padding:EdgeInsets.all(15),
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.asset('images/icon_plus.png'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            )
        )
    );
  }
  Widget gridviewSection = new Container(

    child: GridView.count(
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 15.0,
      crossAxisCount: 2,
      childAspectRatio: (173.32 / 267.51),
      padding: EdgeInsets.all(25.05),
      children: [
        _itemProduct('Diet Coke','355ml,Price','\$1.99','images/img_coke.png'),
        _itemProduct('Sprite Can','325ml,Price','\$1.50','images/img_sprite.png'),
        _itemProduct('Apple & Grape Juice','2L,Price','\$15.99','images/img_apple.png'),
        _itemProduct('Orange Juice','2L,Price','\$15.99','images/img_orenge.png'),
        _itemProduct('Coca Cola Can','325ml,Price','\$4.99','images/img_coca.png'),
        _itemProduct('Pepsi can','330ml,Price','\$4.99','images/img_pepsi.png'),
        _itemProduct('Diet Coke','355ml,Price','\$1.99','images/img_coke.png'),
        _itemProduct('Sprite Can','325ml,Price','\$1.50','images/img_sprite.png'),
        _itemProduct('Apple & Grape Juice','2L,Price','\$15.99','images/img_apple.png'),
        _itemProduct('Orange Juice','2L,Price','\$15.99','images/img_orenge.png'),
        _itemProduct('Coca Cola Can','325ml,Price','\$4.99','images/img_coca.png'),
        _itemProduct('Pepsi can','330ml,Price','\$4.99','images/img_pepsi.png'),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'My Sign In',
        home: Container(
          decoration: BoxDecoration(color: bg_coler),
          child: Scaffold(
            backgroundColor: bg_coler,
            appBar: AppBar(
              backgroundColor: bg_coler,
              centerTitle: true,
              elevation: 0,
              title: Text(
                'Beverages',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: title_coler
                ),
              ),
              leading:IconButton(
                icon: Image.asset('images/icon_back_arrow.png'),
                onPressed: (){},
              ),
              actions: [
                IconButton(
                  padding: EdgeInsets.only(right: 25.0),
                  icon: Image.asset('images/icon_fillter.png'),
                  onPressed: (){},
                )
              ],
            ),
            body: gridviewSection,
          ),
        )
    );
  }
}