import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main()=>runApp(App());


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.blueAccent,   //选项卡Tab点击时的水波纹颜色
      ),
    );
  }
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigration button is pressed !!'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('Search button is pressed !!'),
            ),
          ],
          title: Text("DINGJIE"),
          elevation: 50.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_boat)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 130, color: Colors.black12),
            Icon(Icons.change_history, size: 130, color: Colors.black12),
            Icon(Icons.directions_boat, size: 130, color: Colors.black12),
          ],
        ),
        //endDrawer: Text("This is drawer"),//右边抽屉
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toUpperCase()),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              ListTile(
                title: Text('messages', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, color: Colors.black12, size:22.0),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, color: Colors.black12, size:22.0),
              ),
              ListTile(
                title: Text('Setting', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, color: Colors.black12, size:22.0),
              ),
            ]
          )
        )
      ),
  
    );
  }
}





