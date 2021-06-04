import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new mySignIn());

final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final title_input_str = 'Get your groceries with nectar';
final btn_fb_color = Color.fromRGBO(74, 102, 172, 1);
final btn_gg_color = Color.fromRGBO(83, 131, 236, 1);
final btn_text_color = Color.fromRGBO(252, 252, 252, 1);

FlatButton _buttonLogin(String btnIcon,String btnText,Color btn_color){
  return FlatButton(
    color: btn_color,
    textColor: btn_text_color,
    onPressed: (){},
    minWidth: 353.0,
    height: 67.0,
    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(19.0)),
    padding:EdgeInsets.only(left: 20.0),
    child: Stack(
      children: [
        Container(
          width:353.0,
          alignment: Alignment.center,
          child: Text(btnText,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              fontFamily:'Gilroy',
          ),),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Image.asset(btnIcon),
        )
      ],
    ),

  );
}
class mySignIn extends StatelessWidget{

  Widget bannerSection = new Container(
    child: Image.asset('images/banner1.png',
    fit: BoxFit.cover,),
  );
  Widget inputSection = new Container(
    margin: EdgeInsets.only(left: 24.53,right: 24.53),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 222.0,
          child: Text(title_input_str,
          maxLines: 2,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
            color: title_coler,
          ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 20.61),
            child: TextField(
                decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
                    hintText: ' +880',
                    hintStyle: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 18.0,
                      color: title_coler,
                      fontWeight: FontWeight.w700,
                    ),
                    prefixIcon: Image.asset('images/icon_flag.png',),
                    prefixIconConstraints:BoxConstraints(
                      minWidth: 25.0,
                      minHeight: 25.0,
                    )
                ),
              readOnly: true,
              enableInteractiveSelection: true,
              onTap:(){},
            )
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 30,bottom: 27.8),
          child: Text('Or connect with social media',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 14.0,
              color: Color(0xff828282),
              fontWeight: FontWeight.w600,
          ),),
        )
      ],
    ),
  );
  Widget buttonSection = new Container(
    height: 170,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buttonLogin('images/icon_gg.png', 'Continue with Google',btn_gg_color),
        _buttonLogin('images/icon_fb.png', 'Continue with Facebook',btn_fb_color),
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                bannerSection,
                inputSection,
                buttonSection,
              ],
            ),
          ),
        ),
      )
    );
  }

}