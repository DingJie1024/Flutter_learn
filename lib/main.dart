import 'package:flutter/material.dart';
import 'package:learn01/demo/form_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SliverDemo(),
      // home: Home(),
      // home: NavigatorDemo(),
      initialRoute: '/form',
      routes: {
        '/':(context) => Home(),
        '/about':(context) => Page(title:'About'),
        '/form':(context) => FormDemo()
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.blueAccent, //选项卡Tab点击时的水波纹颜色
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
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
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              //Icon(Icons.change_history, size: 130, color: Colors.black12),
              BasicDemo(),
              // Icon(Icons.directions_boat, size: 130, color: Colors.black12),
              LayoutDemo(),
              // ViewDemo(),
              SliverDemo()
            ],
          ),
          //endDrawer: Text("This is drawer"),//右边抽屉
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}
