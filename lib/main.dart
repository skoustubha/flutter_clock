import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

DateTime now = DateTime.now();
String date = DateFormat('dd-MM-yyyy').format(now);
String time = DateFormat('jm').format(now);
String week = DateFormat('EEEE').format(now);

void main() => runApp(MaterialApp(
  title: 'My Clock',
  home:HomeScreen(),
));

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  HomeScreenState();
  _developer(){
    return "CLOCK UI BY\nS KOUSTUBHA BHARADVAJ";
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(
            width: 2,
            color: Colors.white.withOpacity(1)
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"),
              fit: BoxFit.cover,
            )),
        child:SafeArea(
          child: Card(
            elevation: 10,
            color: Colors.black.withAlpha(0),
            child: Row(
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.white.withAlpha(10),
                  child:Container(
                    width: 326.33,
                    padding: EdgeInsets.all(15),
                    foregroundDecoration: myBoxDecoration(),
                    child:Center(
                      child: Text(time,textAlign:TextAlign.center,style: TextStyle(
                        fontSize: 67,
                        letterSpacing: 0.2,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),


                ),


                Column(
                  children: <Widget>[
                    Container(
                      foregroundDecoration: myBoxDecoration(),
                      padding: EdgeInsets.fromLTRB(20,10,23,10),
                      child:Column(
                        children: <Widget>[
                          Center(
                            child: Text(date,textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 22,
                              letterSpacing: 0.1,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                          Center(
                            child: Text(week,textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0.1,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.bold,
                            )),                               )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(2,5,2,2),
                      child:Center(
                        child: Image.asset(
                          "assets/images/lenovo.png",
                          width: 170,
                          color: Color.fromRGBO(255, 255, 255, 0.58),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(1),
                      child:Center(
                        child: Image.asset(
                            "assets/images/google.png",
                            width: 170,
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            colorBlendMode: BlendMode.modulate
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(21,13,21,12),
                      child: Center(
                        child: Text(_developer(),textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
