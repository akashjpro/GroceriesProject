import 'package:flutter/material.dart';
import 'package:groceries_app/ui/bottomNavigationBar.dart';
import 'package:groceries_app/ui/explore.dart';
import 'package:groceries_app/ui/homeScreen.dart';
import 'package:groceries_app/ui/myCart.dart';

void main() => runApp(myFavorites());
final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
class myFavorites extends StatelessWidget{
  Widget buildItemCart(String name,String de,String price,String img){
    return Container(
      height: 114.5,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffe2e2e2)),bottom:BorderSide(color: Color(0xffe2e2e2)))
      ),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: 32.71),
            child: Image.asset(img,width: 70.43,height: 64.69,fit: BoxFit.fill,),),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xff181725),
                ),),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  de,
                  style:TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff7c7c7c),
                  ),),
              ),
            ],
          ),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    price,
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff181725),
                    ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right,color: title_coler,size: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget ButtonSection = Container(
      margin: EdgeInsets.only(bottom: 24.45),
      child: FlatButton(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('Add All To Cart',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,fontFamily:'Gilroy',),
                  textAlign: TextAlign.center ,
                ),
              ),
            ],
          ),
          color: btn_color,
          textColor: btn_text_color,
          onPressed: (){},
          minWidth: 353.0,
          height: 67.0,
          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(19.0))
      )
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg_coler,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Favorites',
          style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: title_coler
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.27),
        color: bg_coler,
        child: Column(
          children: [
            Expanded(child: ListView(
              children: [
                buildItemCart('Bell Pepper Red','1kg,Price','\$4.99','images/icon_tomato.png'),
                buildItemCart('Egg Chicken Red','4pcs,Price','\$1.99','images/img_eggs.png'),
                buildItemCart('Organic Bananas','12kg,Price','\$3.00','images/icon_bananas.png'),
                buildItemCart('Ginger','250gm,Price','\$2.99','images/icon_item.png'),
                buildItemCart('Bell Pepper Red','1kg,Price','\$4.99','images/icon_tomato.png'),
                buildItemCart('Egg Chicken Red','4pcs,Price','\$1.99','images/img_eggs.png'),
                buildItemCart('Organic Bananas','12kg,Price','\$3.00','images/icon_bananas.png'),
                buildItemCart('Ginger','250gm,Price','\$2.99','images/icon_item.png'),
              ],
            )),
            ButtonSection
          ],
        ),
      ),
    );
  }
}
