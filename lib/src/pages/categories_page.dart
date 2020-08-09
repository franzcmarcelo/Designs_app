import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class CategoriesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            _background(),
            SingleChildScrollView(
              child: Column(
                children: [
                  _textInfo(),
                  _categories(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       title: Container(),
      //       icon: Icon(Icons.calendar_today)
      //     ),
      //     BottomNavigationBarItem(
      //       title: Container(),
      //       icon: Icon(Icons.pie_chart_outlined)
      //     ),
      //     BottomNavigationBarItem(
      //       title: Container(),
      //       icon: Icon(Icons.supervised_user_circle)
      //     ),
      //   ],
      // ),
    );
  }

  Widget _background() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        ),
      ],
    );
  }

  Widget _textInfo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 80.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar( BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        // Background (white)
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          // Unselected Items Navigation Bar
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today, size: 30.0)
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart, size: 30.0)
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle, size: 30.0)
          ),
        ]
      )
    );
  }

  Widget _categories(){
    return Container(
      child: Table(
        children: [
          TableRow(
            children: [
              _categoryItem( [Colors.lightBlue[100], Colors.blue[600]], Icons.border_all, 'General' ),
              _categoryItem( [Colors.purpleAccent, Colors.deepPurple], Icons.border_all, 'General' ),
            ]
          ),
          TableRow(
            children: [
              _categoryItem( [Colors.pink[100], Colors.pinkAccent[400]], Icons.shop, 'Shopping' ),
              _categoryItem( [Colors.orange[100], Colors.deepOrange], Icons.insert_drive_file, 'Bills' ),
            ]
          ),
          TableRow(
            children: [
              _categoryItem( [Colors.lightBlue[200], Colors.blue[700]], Icons.movie_filter, 'Entertaiment' ),
              _categoryItem( [Colors.green[100], Colors.greenAccent[400]], Icons.cloud, 'Grocerys' ),
            ]
          ),
          TableRow(
            children: [
              _categoryItem( [Colors.red[200], Colors.red], Icons.collections, 'Photos' ),
              _categoryItem( [Colors.teal[100], Colors.tealAccent[400],], Icons.help_outline, 'Help' ),
            ]
          ),
        ],
      ),
    );
  }

  Widget _categoryItem( List<Color> colors, IconData icon, String nameCategory ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.only( left: 15.0, right: 15.0, bottom: 30.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      colors[0],
                      colors[1],
                    ]
                  )
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 35.0,
                  child: Icon(icon, color: Colors.white, size: 30.0,),
                ),
              ),
              Text(nameCategory, style: TextStyle(color: colors[0])),
              SizedBox(height: 5.0,),
            ],
          ),
        ),
      ),
    );
    // return ClipRect(
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(
    //       sigmaX: 10.0,
    //       sigmaY: 10.0,
    //     ),
    //     child: Container(
    //       height: 180.0,
    //       margin: EdgeInsets.only( left: 15.0, right: 15.0, bottom: 30.0),
    //       decoration: BoxDecoration(
    //         color: Color.fromRGBO(62, 66, 107, 0.7),
    //         borderRadius: BorderRadius.circular(20.0),
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           SizedBox(height: 5.0,),
    //           CircleAvatar(
    //             backgroundColor: color,
    //             radius: 35.0,
    //             child: Icon(icon, color: Colors.white, size: 30.0,),
    //           ),
    //           Text(nameCategory, style: TextStyle(color: color)),
    //           SizedBox(height: 5.0,),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
