import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/ui/signIn.dart';

final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
final image_bg = AssetImage('images/bg1.png');
final title_str = 'Welcome to our store';
final title_color = Color(0xffFFFFFF);
final small_title_color = Color.fromRGBO(252, 252, 252, 0.7);
final small_title_str = 'Ger your groceries in as fast as one hour';



class OnBording extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "OnBording",
      home: Container(
          decoration: BoxDecoration(image: DecorationImage(image: image_bg,fit: BoxFit.cover)),
          child: MyOnBording(),
      ),
    );
  }
}
class MyOnBording extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyOnBordingState();
  }
}
class MyOnBordingState extends State<MyOnBording>{
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
  Widget ButtonSection(BuildContext context){
    return Container(
        child: FlatButton(
            child: Text('Get Started',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,fontFamily:'Gilroy',
            ),),
            color: btn_color,
            textColor: btn_text_color,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => mySignIn()),
              );
            },
            minWidth: 353.0,
            height: 67.0,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(19.0))
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.only(bottom: 50.84),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              titleSection,
              ButtonSection(context),
            ],
          ),
        )
    );
  }

}