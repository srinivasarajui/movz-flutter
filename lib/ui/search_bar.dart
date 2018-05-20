import 'package:flutter/material.dart';


class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.wallpaper),
            title: Text(''),
            subtitle: Text(''),
          ),
        ],
      ),
    );
  }
}
