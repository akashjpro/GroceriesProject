import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/ui/bottomNavigationBar.dart';
import 'package:groceries_app/ui/homeScreen.dart';
import 'package:groceries_app/ui/signUp.dart';

void main() => runApp(new myLogin());

final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final title_input_str = 'Loging';
final image_bg = AssetImage('images/bg_transparent.jpg');
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm>{
  bool _isHidden = true;
  void _toggleHidden(){
    setState(() {
    _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  TextField(
      obscureText: _isHidden,
      style: TextStyle(
        fontFamily: 'Gilroy',
        fontSize: 25.0,
        color: Color(0xff181725),
        fontWeight: FontWeight.w600,
        letterSpacing: 8.16,
      ),
      decoration: InputDecoration(
        disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
        // hintText: 'Types of your password',
        // hintStyle:TextStyle(
        //   fontFamily: 'Gilroy',
        //   fontSize: 18.0,
        //   color: Color(0xffb1b1b1),
        //   letterSpacing: 1
        // ),
        suffix: InkWell(
          onTap: _toggleHidden,
          child: Icon(_isHidden?Icons.visibility:Icons.visibility_off),
        ),

      ),
    );
  }


}
class myLogin extends StatelessWidget{
  Widget logoSection = new Container(
      margin: EdgeInsets.only(top: 30.0,bottom: 100.21),
      alignment: Alignment.topCenter,
      child:Image.asset(
        'images/icon2.png',
        fit: BoxFit.cover,
        width: 48.47,
        height: 56.38,)
  );
  Widget titleSection = new Container(
      margin: EdgeInsets.only(left: 24.53,right: 24.53),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15.0),
              child: Text(title_input_str,
                maxLines: 1,
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
              margin: EdgeInsets.only(bottom: 40.0),
              child: Text('Enter your emails and password',
                maxLines: 1,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Gilroy',
                  color: Color(0xff7c7c7c),
                ),
              ),
            ),
          ])
  );

  Widget inputSection = new Container(
    margin: EdgeInsets.only(left: 24.53,right: 24.53),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Email',
                    style:TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 18.0,
                    color: Color(0xff181725),
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
                    // hintText: 'Types of your email',
                    // hintStyle:TextStyle(
                    //   fontFamily: 'Gilroy',
                    //   fontSize: 18.0,
                    //   color: Color(0xffb1b1b1),
                    // ),
                  ),
                  onTap:(){},
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Text('Password',
                    style:TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,),
                ),
                LoginForm(),
              ],
            )
        ),
      ],
    ),
  );
  Widget buttonSection(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 24.53,right: 24.53),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: TextButton(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  color: Color(0xff181725),
                ),
              ),
              onPressed: (){},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child:  FlatButton(
                child: Text('Log In',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,fontFamily:'Gilroy',
                ),),
                color: btn_color,
                textColor: btn_text_color,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigationBar()));
                },
                minWidth: 353.0,
                height: 67.0,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(19.0))
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ',style:
                TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  color: Color(0xff181725),
                ),
                ),
                TextButton(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      color: btn_color,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => mySignUp()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'My Number',
      home:  Container(
        decoration: BoxDecoration(image: DecorationImage(image: image_bg,fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              logoSection,
              titleSection,
              inputSection,
              buttonSection(context)
            ],
          ),
        ),
      ),
    );
  }

}