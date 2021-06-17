import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(myOrderAccepted());
final image_bg = AssetImage('images/bg_transparent.jpg');
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
class myOrderAccepted extends StatelessWidget{
  Widget ButtonSection(Color bgColor,Color textColor,String text)=> Container(
      child: FlatButton(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(text,style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,fontFamily:'Gilroy',),
                  textAlign: TextAlign.center ,
                ),
              ),
            ],
          ),
          color: bgColor,
          textColor: textColor,
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
      title:'My Number',
      home:  Container(
        decoration: BoxDecoration(image: DecorationImage(image: image_bg,fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Container(
            margin: EdgeInsets.symmetric(horizontal: 25.27),
            child: Column(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("images/img_accepted.png",width: 269.08,height: 240.31,fit: BoxFit.cover,),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 66.67,bottom: 20.0),
                        width: 265.0,
                        child: Text(
                          'Your Order has been accepted',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),
                      Container(
                        width: 278.0,
                        child: Text(
                          'Your items has been placcd and is on it’s way to being processed',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff7c7c7c),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                ButtonSection(btn_color,btn_text_color,"Track Order"),
                Container(
                  margin: EdgeInsets.only(bottom: 38.5),
                  child: ButtonSection(Colors.transparent,Color(0xff181725),"Back To Home"),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}