import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/ui/bottomNavigationBar.dart';

void main() => runApp(new myHomeScreen());

final bg_coler = Color(0xffFCFCFC);

class myHomeScreen extends StatelessWidget{
  Widget logoSection = new Container(
      margin: EdgeInsets.only(top: 10.0,bottom: 20),
      alignment: Alignment.topCenter,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/icon2.png',
            fit: BoxFit.cover,
            width: 26.48,
            height: 30.8,),
          TextButton.icon(
            icon: Image.asset('images/icon_locate.png',width: 15.15,height: 18.17,fit: BoxFit.cover,),
            label: Text('Dhaka, Banassre',style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: Color(0xff4c4f4d),
            ),),
            onPressed: (){},

          )
        ],
      )
  );

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
  Widget sliderBannerSection = new Container(
    margin: EdgeInsets.fromLTRB(24.71, 20, 24.71, 0),
    child: SizedBox(
      height: 114.99,
      child: Carousel(
        images:[
          Image.asset('images/banner2.png',width: 1000.0,fit: BoxFit.cover,),
          Image.asset('images/banner2.png',width: 1000.0,fit: BoxFit.cover,),
          Image.asset('images/banner2.png',width: 1000.0,fit: BoxFit.cover,),
        ],
        dotSize: 6.0,
        dotSpacing: 20.0,
        dotColor: Color(0xff030303).withOpacity(0.3),
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        dotIncreasedColor:Color(0xff53b175),
        autoplay: false,
      ),
    ),
  );
  static Container _itemProduct(String name,String detail,String price,String img){
    return new Container(
      margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18.0)),
            border: Border.all(color: Color(0xffe2e2e2))
        ),
      child:SizedBox(
        width: 170.32,
        height: 248.51,
        child: InkWell(
          onTap: (){},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset(img,width:99.89,height: 79.43,fit: BoxFit.cover,),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.26,left: 15),
                child: Text(name,style:
                TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff181725),
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 5,left: 15),
                child: Text(detail,style:
                TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7c7c7c),
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 15,right: 15),
                alignment: Alignment.bottomCenter,
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
                      minWidth: 45.67,
                      height: 45.67,
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
  static Container _itemGroupPro(String name,String img,Color mycolor){
    return Container(
      margin: EdgeInsets.only(right: 15,bottom: 20),
      padding: EdgeInsets.only(left: 16.94),
      decoration: BoxDecoration(
        color: mycolor,
        borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        border: Border.all(color: mycolor)
      ),
      child: SizedBox(
        width: 228.19,
        height: 105,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(img),
            Text(name,style:
            TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xff3E423F),
            ),)
          ],
        ),
      )
    );
  }
  Widget ExclusiveOfferSection = new Container(
    margin: EdgeInsets.symmetric(horizontal: 24.71),
    child:Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Exclusive Offer',style:
              TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xff181725),
              ),),
              TextButton(
                child: Text('See all',style:
                TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff53b175),
                ),),
                onPressed: (){},
              )
            ],
          ),
        ),
        SizedBox(
          height:248.51,
          child: ListView(
            scrollDirection: Axis.horizontal,

            children: [
              _itemProduct('Organic Bananas','7pcs,Priceg','\$4.99','images/icon_bananas.png'),
              _itemProduct('Red Apple','1kg,Priceg','\$4.99','images/icon_apple.png'),
              _itemProduct('Bell Pepper Red','7pcs,Priceg','\$4.99','images/icon_tomato.png'),
              _itemProduct('Ginger','7pcs,Priceg','\$4.99','images/icon_item.png'),
              _itemProduct('Organic Bananas','7pcs,Priceg','\$4.99','images/icon_bananas.png'),
            ],
          ),
        ),
      ],
    ),
  );
  Widget BestSellingSection = new Container(
    margin: EdgeInsets.symmetric(horizontal: 24.71),
    child:Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Best Selling',style:
              TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xff181725),
              ),),
              TextButton(
                child: Text('See all',style:
                TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff53b175),
                ),),
                onPressed: (){},
              )
            ],
          ),
        ),
        SizedBox(
          height:248.51,
          child: ListView(
            scrollDirection: Axis.horizontal,

            children: [
              _itemProduct('Bell Pepper Red','7pcs,Priceg','\$4.99','images/icon_tomato.png'),
              _itemProduct('Ginger','7pcs,Priceg','\$4.99','images/icon_item.png'),
              _itemProduct('Organic Bananas','7pcs,Priceg','\$4.99','images/icon_bananas.png'),
              _itemProduct('Red Apple','1kg,Priceg','\$4.99','images/icon_apple.png'),
              _itemProduct('Organic Bananas','7pcs,Priceg','\$4.99','images/icon_bananas.png'),
            ],
          ),
        ),
      ],
    ),
  );
  Widget GroceriesSection = new Container(
    margin: EdgeInsets.symmetric(horizontal: 24.71),
    child:Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Groceries',style:
              TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xff181725),
              ),),
              TextButton(
                child: Text('See all',style:
                TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff53b175),
                ),),
                onPressed: (){},
              )
            ],
          ),
        ),
        SizedBox(
          height:105,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _itemGroupPro('Pulses', 'images/icon_pulses.png', Color(0xffF8A44C).withOpacity(0.15)),
              _itemGroupPro('Rice', 'images/icon_rice.png', Color(0xff53b175).withOpacity(0.15)),
              _itemGroupPro('Pulses', 'images/icon_pulses.png', Color(0xffF8A44C).withOpacity(0.15)),
              _itemGroupPro('Rice', 'images/icon_rice.png', Color(0xff53b175).withOpacity(0.15)),
            ],
          ),
        ),
        SizedBox(
          height:248.51,
          child: ListView(
            scrollDirection: Axis.horizontal,

            children: [
              _itemProduct('Beef Bone','1kg,Priceg','\$4.99','images/icon_beef.png'),
              _itemProduct('Broiler Chicken','1kg,Priceg','\$4.99','images/icon_chicken.png'),
              _itemProduct('Beef Bone','1kg,Priceg','\$4.99','images/icon_beef.png'),
              _itemProduct('Broiler Chicken','1kg,Priceg','\$4.99','images/icon_chicken.png'),
            ],
          ),
        ),
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
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                logoSection,
                searchSection,
                sliderBannerSection,
                ExclusiveOfferSection,
                BestSellingSection,
                GroceriesSection
              ],
            ),
            bottomNavigationBar: bottomNavigationBar(),
          ),
        )
    );
  }
  
}