import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    int currentSelect = 0;

    List<Widget> dataList = new List();
    Widget header = UserAccountsDrawerHeader(
      accountName: null,
      accountEmail: null,
      currentAccountPicture: null,
      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/startImage.png'),
          )),
    );

    dataList.add(header);
    dataList.addAll(initData());

    return Drawer(
        child: ListView(
      children: dataList,
    ));
  }
}

List<Widget> initData() {
  List<Widget> titleArray = new List();

  ListTile homeTitleItem = ListTile(
    title: Text('首页'),
    leading: Icon(Icons.home),
    onTap: () {},
  );

  ListTile mineTitleItem = ListTile(
    title: Text('我的'),
    leading: Icon(Icons.perm_identity),
    onTap: () {},
  );

  ListTile settingTitleItem = ListTile(
    title: Text('设置'),
    leading: Icon(Icons.home),
    onTap: () {},
  );

  titleArray.add(homeTitleItem);
  titleArray.add(mineTitleItem);
  titleArray.add(settingTitleItem);
  return titleArray;
}
