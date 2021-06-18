import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/ui/verification.dart';

void main() => runApp(new myNumber());

final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final title_input_str = 'Enter your mobile number';
final image_bg = AssetImage('images/bg_transparent.jpg');


class myNumber extends StatelessWidget{
  Widget inputSection = new Container(
    margin: EdgeInsets.only(left: 24.53,right: 24.53),
    child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60.0),
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
            margin: EdgeInsets.only(top: 20.61),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Mobile Number',
                    style:TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  textAlign: TextAlign.left,),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(226, 226, 226, 1),width: 2.0)),
                      prefixText: ' +880',
                      prefixStyle: TextStyle(
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
                  onTap:(){},
                )
              ],
            )
        ),
      ],
    ),
  );
  Widget buttonSection(BuildContext context){
    return Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.all(25),
        child:FlatButton(
          color: Color(0xff53B175),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyVerification()));
          },
          minWidth: 73.0,
          height: 73.0,
          shape: CircleBorder(),
          padding:EdgeInsets.all(15),
          child: Stack(
            children: [
              Container(
                child: Icon(Icons.arrow_forward_ios,color: Color(0xffFFF9FF),),
              )
            ],
          ),

        )
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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              padding: EdgeInsets.only(left: 15.0),
              icon: Icon(Icons.arrow_back_ios,color: title_coler,size: 30.0),
              onPressed: (){Navigator.pop(context);},
            ),
          ),
          body: Column(
            children: [
              Expanded(child: inputSection),
              buttonSection(context),
            ],
          ),
        ),
      ),
    );
  }
  
}