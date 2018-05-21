import 'package:flutter/material.dart';

import '../data_model.dart';

class ContentItemWidget extends StatelessWidget {
  final ContentItem _item;
  ContentItemWidget(this._item);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: new Image.network(
              "https://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL50_SY1000_CR0,0,675,1000_AL_.jpg",
              width: 120.0,
            ),
            title: Text(_item.name),
            subtitle: Text(_item.desc),
          ),
        ],
      ),
    );
  }
}
