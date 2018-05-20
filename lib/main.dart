import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import './ui/content_list.dart';
import './data_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Movz',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SearchPage(),
    );
  }
}



class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchBar searchBar;
  List<ContentItem> _searhResults;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('Movz - Find your movies'),
        actions: [searchBar.getSearchAction(context)]);
  }

  void onSubmitted(String value) {
  _searhResults = [new ContentItem(value,value),
            new ContentItem(value,value)];
  }

  _SearchPageState() {
    searchBar = new SearchBar(
        inBar: true,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted);
     _searhResults = null;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),
      key: _scaffoldKey,
      body: new Center(
          child:   _searhResults == null?
             new Center(child: new Text("No search Result"))
              :ContentListWidget(_searhResults)));
  }
}