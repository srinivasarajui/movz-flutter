import 'package:flutter/material.dart';
import '../data_model.dart';
import './content_item.dart';

class ContentListWidget extends StatelessWidget {

  final List<ContentItem> _items;
  ContentListWidget(this._items);
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return ContentItemWidget(_items[index]);
          },
        );

  }
  }
