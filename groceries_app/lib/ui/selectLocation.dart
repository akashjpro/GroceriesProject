import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/ui/loging.dart';

void main() => runApp(new mySelectLocation());
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final title_input_str = 'Select Your Location';
final title_small_input_str = 'Swithch on your location to stay in tune with what’s happening in your area';
final image_bg = AssetImage('images/bg_transparent.jpg');
final image_map = AssetImage('images/img_map.png');
final listZoneItem = ['Banasree','Zone1','Zone2','Zone3','Zone4'];
final listAreaItem = ['Area1','Area2','Area3','Area4','Area5'];

class myDropdownZone extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myDropdownZoneState();
}
class myDropdownZoneState extends State<myDropdownZone>{
  String dropdownValue = listZoneItem[0];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 25.0,
      style: TextStyle(
        fontFamily: 'Gilroy',
        fontSize: 18.0,
        color: Color(0xff181725),
        fontWeight: FontWeight.w600
      ),
      underline: Container(
        height: 1,
        // width: 364,
        color: Color(0xffE2E2E2),
      ),
      onChanged:  (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: listZoneItem.map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

}
class myDropdownArea extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myDropdownZoneArea();
}
class myDropdownZoneArea extends State<myDropdownArea>{
  String dropdownValue = listAreaItem[0];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 25.0,
      hint: Text('Types of your area',
        style: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 18.0,
          color: Color(0xffB1B1B1)
        ),
      ),
      style: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 18.0,
          color: Color(0xff181725),
          fontWeight: FontWeight.w600
      ),
      underline: Container(
        height: 1,
        // width: 364,
        color: Color(0xffE2E2E2),
      ),
      onChanged:  (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: listAreaItem.map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

}
class mySelectLocation extends StatelessWidget{
  Widget titleSection = new Container(
    child: Column(
      children: [
        Image(image: image_map,fit: BoxFit.cover,),
        Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Text(title_input_str,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26.0,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
              color: title_coler,
            ),
          ),
        ),
        Container(
          width: 324.0,
          margin: EdgeInsets.only(top: 15.0),
          child: Text(title_small_input_str,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Gilroy',
              color: Color(0xff7C7C7C),
            ),
          ),
        )
      ],
    )
  );
  Widget inputSection = new Container(
    margin: EdgeInsets.only(left: 24.53,right: 24.53),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: 90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Your Zone',
                    style:TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,),
                ),
                myDropdownZone(),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Text('Your Area',
                    style:TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16.0,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,),
                ),
                myDropdownArea()
              ],
            )
        ),
      ],
    ),
  );
  Widget ButtonSection(BuildContext context){
    return Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(top: 40.0,bottom: 40.0),
        child: FlatButton(
            child: Text('Submit',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,fontFamily:'Gilroy',
            ),),
            color: btn_color,
            textColor: btn_text_color,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => myLogin()));
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
              onPressed: (){ Navigator.pop(context);},
            ),
          ),
          body: ListView(
            children: [
              titleSection,
              inputSection,
              ButtonSection(context),
            ],
          ),
        ),
      ),
    );
  }

}