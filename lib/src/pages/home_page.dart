import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        children: [
          _options(context, Icons.art_track, 'Basic Page', 'basic', Colors.blueAccent),
          SizedBox(height: 20.0),
          _options(context, Icons.import_export, 'Scroll Page', 'scroll', Colors.blueAccent),
          SizedBox(height: 20.0),
          _options(context, Icons.category, 'Categries Page', 'categories', Colors.blueAccent),

        ],
      ),
    );
  }

  Widget _options(BuildContext context, IconData icon, String nameOption, String route, Color color) {
    return ListTile(
      title: Text(
        nameOption,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: color
        ),
      ),
      leading: Icon(icon, size: 34.0, color: color),
      trailing: Icon(Icons.arrow_forward_ios, size: 22.0, color: color),
      onTap: (){
        Navigator.pushNamed(context, route);
      },
    );
  }
}