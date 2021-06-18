import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(new myProductDetail());
final title_coler = Color(0xff030303);
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
class myProductDetail extends StatelessWidget{
  Widget imageSection = new Container(
    height: 259.6,
    alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      color: Color(0xffF2F3F2),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0)),
        border: Border.all(color: Color(0xffF2F3F2))
    ),
    child: SizedBox(
      width: 329.34,
      child:Carousel(
        dotVerticalPadding: 15,
        images:[
          Stack(
            children: [
              Container( color:Color(0xffF2F3F2),margin: EdgeInsets.only(top: 20,left: 20),child: Image.asset('images/item_img.png'),),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25,sigmaY: 25),
                  child: Container(
                    width: 295.45,
                    height: 171.62,
                    margin: EdgeInsets.only(top: 20,left: 20),),
                ),
              ),
              Image.asset('images/item_img.png',),
            ],
          ),
          Stack(
            children: [
              Container( color:Color(0xffF2F3F2),margin: EdgeInsets.only(top: 20,left: 20),child: Image.asset('images/item_img.png'),),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25,sigmaY: 25),
                  child: Container(
                    width: 295.45,
                    height: 171.62,
                    margin: EdgeInsets.only(top: 20,left: 20),),
                ),
              ),
              Image.asset('images/item_img.png',),
            ],
          ),
          Stack(
            children: [
              Container( color:Color(0xffF2F3F2),margin: EdgeInsets.only(top: 20,left: 20),child: Image.asset('images/item_img.png'),),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25,sigmaY: 25),
                  child: Container(
                    width: 295.45,
                    height: 171.62,
                    margin: EdgeInsets.only(top: 20,left: 20),),
                ),
              ),
              Image.asset('images/item_img.png',),
            ],
          ),
        ],
        dotSize: 4.0,
        dotSpacing: 10.0,
        dotPosition: DotPosition.bottomCenter,
        dotColor: Color(0xff030303).withOpacity(0.3),
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        dotIncreasedColor:Color(0xff53b175),
        autoplay: false,
      ),
    ),
  );
  Widget contentSection = new Container(
    padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.5),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Naturel Red Apple',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 24.0,
                    color: title_coler,
                    fontWeight: FontWeight.w700,
                  ),),
                Container(
                  margin: EdgeInsets.only(top: 10.5),
                  child: Text('1kg, Price',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      color: Color(0xff7c7c7c),
                      fontWeight: FontWeight.w600,
                    ),),
                )
              ],
            ),
            Icon(Icons.favorite_border,color:Color(0xff7c7c7c) ,)
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('images/icon_minus.png'),
                  Container(
                    width: 45.67,
                    height: 45.67,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller:TextEditingController()..text = '1',
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(17.0)),
                          borderSide: BorderSide(color: Color(0xffe2e2e2)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(17.0)),
                          borderSide: BorderSide(color: Color(0xffe2e2e2)),
                        ),
                      ),
                    ),
                  ),
                  Image.asset('images/icon_plus_number.png'),
                ],
              ),
              Text('\$4.99',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 24.0,
                  color: title_coler,
                  fontWeight: FontWeight.bold,
                ),)
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical:10.05 ),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xffe2e2e2).withOpacity(0.7),
                )),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Detail',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: title_coler
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down,color: title_coler,size: 30,)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 9.45),
                child: Text(
                  '''Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.''',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                    color: Color(0xff7c7c7c),
                  ),
                )
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical:10.05 ),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xffe2e2e2).withOpacity(0.7),
            )),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(
                'Nutritions',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: title_coler
                ),
              ),),
              Container(
                width: 33.61,
                height: 18.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffebebeb),
                    border: Border.all(color:Color(0xffebebeb),style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))
                ),
                child: Text(
                  '100gr',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontSize: 9.0,
                      color: Color(0xff7c7c7c)
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_right,color: title_coler,size: 30,)
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10.5),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xffe2e2e2).withOpacity(0.7),
              style: BorderStyle.solid,
            )),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(
                'Review',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: title_coler
                ),
              ),),
              Row(
                children: [
                  _starIcon(Color(0xfff3603f)),
                  _starIcon(Color(0xfff3603f)),
                  _starIcon(Color(0xfff3603f)),
                  _starIcon(Color(0xfff3603f)),
                  _starIcon(Color(0xfff3603f)),
                ],
              ),
              Icon(Icons.keyboard_arrow_right,color: title_coler,size: 30,)
            ],
          ),
        )
      ],
    ),
  );
  static Icon _starIcon(Color myColor){
    return Icon(
      Icons.star_rounded,
      color: myColor,
    );
  }
  Widget ButtonSection(BuildContext context){
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: FlatButton(
            child: Text('Add To Basket',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,fontFamily:'Gilroy',
            ),),
            color: btn_color,
            textColor: btn_text_color,
            onPressed: (){Navigator.pop(context);},
            minWidth: 353.0,
            height: 67.0,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(19.0))
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Product Detail',
      home: Container(
        color: Color(0xffFCFCFC),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF2F3F2),
            elevation: 0.0,
            leading:IconButton(
              icon: Image.asset('images/icon_back_arrow.png'),
              onPressed: (){Navigator.pop(context);},
            ),
            actions: [
              IconButton(
                padding: EdgeInsets.only(right: 25.0),
                icon: Image.asset('images/icon_share.png'),
                onPressed: (){},
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                imageSection,
                contentSection,
                ButtonSection(context),
              ],
            ),
          ),
        ),
      )
    );
  }

}