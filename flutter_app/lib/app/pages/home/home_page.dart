import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/common/common_page.dart';
import 'package:flutter_app/app/pages/dart/dart_page.dart';
import 'package:flutter_app/app/widget/app_bar_widget.dart';
import 'package:flutter_app/utils/utils.dart';

import 'home_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeData> data = HomePagetData
      .mock()
      .list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: 'home',
        titleAction: <Widget>[],
      ),
      body: Container(
        alignment: Alignment.center,
        child: _homeListView(context, data),
      ),
    );
  }
}

Widget _homeListView(BuildContext context, List<HomeData> data) =>
    ListView.builder(
      itemCount: data.length,
      padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
      itemBuilder: (BuildContext context, int index) {
        return _ListItem(index, data[index]);
      },
    );


class _ListItem extends StatelessWidget {
  int _index;
  HomeData _data;

  _ListItem(this._index, this._data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _onListItemClick(context,_index,_data);
      },
      child: Card(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
        child: Container(
          height: 78.0,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: <Widget>[
              Image.network(_data.avater),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Text(_data.title),
            ],
          ),
        ),
      ),
    );
  }

  void _onListItemClick(BuildContext context,int index, HomeData data) {
    switch(_index){
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return CommonPage();
            }));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return DartPage();
            }));
        break;
      default:
        Utils.showToast(data.title);
        break;
    }
  }

  __register()  async {

  }

}
