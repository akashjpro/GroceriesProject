import 'package:flutter/material.dart';
import 'package:groceries_app/ui/bottomNavigationBar.dart';
import 'package:groceries_app/ui/explore.dart';
import 'package:groceries_app/ui/favorites.dart';
import 'package:groceries_app/ui/homeScreen.dart';

void main() => runApp(myCart());
final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
class myCart extends StatelessWidget{
  Widget buildItemCart(String name,String de,String price,String img){
    return Container(
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
                margin: EdgeInsets.only(top: 5,bottom: 12),
                child: Text(
                  de,
                  style:TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff7c7c7c),
                  ),),
              ),
              Row(
                children: [
                  Container(
                    width: 45.67,
                    height: 45.67,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe2e2e2)),
                      borderRadius: const BorderRadius.all(Radius.circular(17.0)),
                    ),
                    child: Image.asset('images/icon_minus.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff181725),
                      ) ,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 45.67,
                    height: 45.67,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe2e2e2)),
                      borderRadius: const BorderRadius.all(Radius.circular(17.0)),
                    ),
                    child: Image.asset('images/icon_plus_number.png'),
                  ),
                ],
              ),
            ],
          ),),
          Container(
            height: 96.98,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/icon_cancel_no_border.png'),
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
                )
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
                child: Text('Go to Checkout',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,fontFamily:'Gilroy',),
                  textAlign: TextAlign.center ,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                  width: 43,
                  height: 22,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                      color: Color(0xff489e67),
                      border: Border.all(color:Color(0xff489e67),style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(5.0))
                  ),
                  child:Text(
                    '\$19.96',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xfffcfcfc)
                    ),
                  ),
                ),
              )

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
          'My Cart',
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
