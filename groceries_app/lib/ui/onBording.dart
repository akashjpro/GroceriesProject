import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyOnBording());

final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
final image_bg = AssetImage('images/bg1.png');
final title_str = 'Welcome to our store';
final title_color = Color(0xffFFFFFF);
final small_title_color = Color.fromRGBO(252, 252, 252, 0.7);

final small_title_str = 'Ger your groceries in as fast as one hour';


class MyOnBording extends StatelessWidget{

  Widget titleSection = Container(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 35.66),
          child: Image.asset('images/icon1.png',fit: BoxFit.cover,
            width: 48.47,
            height: 56.38,),
        ),
        Container(
          margin: EdgeInsets.only(left: 80.5,right: 80.5),
          child: Text(title_str,
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 48.0,
              color:title_color,
              fontFamily:'Gilroy',
              fontWeight: FontWeight.w600,
            ) ,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 59.5,right: 59.5,bottom: 40.88),
          child: Text(small_title_str,
            textAlign: TextAlign.center,
            maxLines: 1,
            style:TextStyle(
              fontSize: 16.0,
              color:small_title_color,
              fontFamily:'Gilroy',
            ) ,
          ),
        ),
      ],
    ),
  );
  Widget ButtonSection = Container(
    child: FlatButton(
      child: Text('Get Started',style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      ),),
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
    return MaterialApp(
      title: 'On Bording',
      home: Container(
        decoration: BoxDecoration(image: DecorationImage(image: image_bg,fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            body: Container(
              margin: EdgeInsets.only(bottom: 50.84),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  titleSection,
                  ButtonSection,
                ],
              ),
            )
        ),
      )
    );
  }

}