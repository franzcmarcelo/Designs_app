import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _page1(),
          _page2(),
        ],
      )
    );
  }

  Widget _page1() {
    return Stack(
      children: [
        _backgroundColor(),
        _backgroundImage(),
        _createInfo(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createInfo() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 50.0,),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          // Se expande, cubriendo todo el espacio sin afector a sus hermanos
          Expanded(
            child: Container(),
          ),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }


  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenido', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: (){},
        ),
      ),
    );
  }

  // Widget _createButton() {

  // }
}