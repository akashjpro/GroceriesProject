import 'package:flutter/material.dart';
void main()=>runApp(new myFilters());
final bg_coler = Color(0xffFCFCFC);
final title_coler = Color(0xff030303);
final btn_color = Color(0xff53B175);
final btn_text_color =Color.fromRGBO(255, 249, 255, 1);
class myFilters extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myFiltersState();
  }

}
class myFiltersState extends State<myFilters>{
  final _checkFilters = new Set<String>();

  Widget buildCheckbox(String title){
    final isChecked = _checkFilters.contains(title);
    return InkWell(
        onTap:(){
          setState(() {
            {
              if(isChecked){
                _checkFilters.remove(title);
              }else{
                _checkFilters.add(title);
              }
            }
          });
        },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 11.94),
              child: isChecked ? Image.asset('images/icon_checked.png') : Image.asset('images/icon_no_check.png'),
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: isChecked ? Color(0xff53b175) :  Color(0xff181725),
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget ButtonSection = Container(
    alignment: Alignment.bottomCenter,
      child: FlatButton(
          child: Text('Apply Filters',style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.0,fontFamily:'Gilroy',
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
      title: 'Filters',
      home: Scaffold(
        backgroundColor: bg_coler,
        appBar: AppBar(
          backgroundColor: bg_coler,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Filters',
            style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: title_coler
            ),
          ),
          leading:IconButton(
            icon: Image.asset('images/icon_back.png',width: 15.71,height: 15.53,fit: BoxFit.cover,),
            onPressed: (){},
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                color: Color(0xfff2f3f2),
                border: Border.all(color: Color(0xfff2f3f2)),
                borderRadius: BorderRadius.only(topLeft: const Radius.circular(30),topRight: const Radius.circular(30),)
            ),
            padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.5),
          child: Column(
            children: [
              Expanded(child: ListView(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725),
                      ),
                    ),
                  ),
                  buildCheckbox('Eggs'),
                  buildCheckbox('Noodles & Pasta'),
                  buildCheckbox('Chips & Crisps'),
                  buildCheckbox('Fast Food'),
                  Container(
                    margin: EdgeInsets.only(top: 30,bottom: 20),
                    child: Text(
                      'Brand',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725),
                      ),
                    ),
                  ),
                  buildCheckbox('Individual Collection'),
                  buildCheckbox('Coca Cola'),
                  buildCheckbox('Ifad'),
                  buildCheckbox('Kazi Farmas'),
                ],
              ),),
              ButtonSection
            ],
          )
        ),
      ),
    );
  }
}