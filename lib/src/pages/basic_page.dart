import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold );
  final subtitleStyle = TextStyle( fontSize: 16.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(),
            _createTitle(),
            _createActions(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://lacf.ca/sites/default/files/images/homepage/banners/P14%20-%20brightcropped%20for%20landing%20page_%20Bridge%20in%20Gablenz%2C%20Germany%2C%20Photo%20by%20Martin%20Damboldt%20from%20Pexels.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Oeschinen Lake Campground', style: titleStyle),
                  SizedBox( height: 7.0),
                  Text('Kandersteg, Switzerland', style: subtitleStyle),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 24.0),
            Text(
              '41',
              style: TextStyle(fontSize: 17.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _action( Icons.call, 'CALL'),
          _action( Icons.near_me, 'ROUTE'),
          _action( Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _action( IconData iconAction, String nameAction) {
    return Column(
      children: <Widget>[
        Icon( iconAction, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0,),
        Text( nameAction, style: TextStyle( fontSize: 15.0, color: Colors.blue ) )
      ],
    );
  }

  Widget _createDescription() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          style: TextStyle(fontSize: 14.0),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}