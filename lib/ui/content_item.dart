import 'package:flutter/material.dart';

import '../data_model.dart';

class ContentItemWidget extends StatelessWidget {

  final ContentItem _item;
  ContentItemWidget(this._item);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child:  Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
       ListTile(
        leading:  Icon(Icons.wallpaper),
        title:   Text(_item.name),
        subtitle:   Text(_item.desc),
      ),

    ],
  ),
    );
  }
  }
