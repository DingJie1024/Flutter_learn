import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewbuilderDemo();
  }
}

class GridViewbuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext content, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 4,
        maxCrossAxisExtent:150.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: _gridItemBuilder,
    );
  }
}

// GridViewExtent网格视图
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

// GridViewCount网格视图
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(children: <Widget>[
      SizedBox.expand(
        child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
      ),
      Positioned(
        bottom: 8.0,
        left: 8.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(posts[index].author)
          ],
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
        // 按住手机屏幕滑动，超过一半进入下一个页面，不超过就返回上一个页面，pageSnapping默认是true
        // pageSnapping: false,
        //倒置
        // reverse: true,
        //滚动的方向，默认水平
        // scrollDirection: Axis.vertical,
        //回调函数
        onPageChanged: (currentPage) => debugPrint("Page: $currentPage"),
        controller: PageController(
          initialPage: 1,
          keepPage: false,
          viewportFraction: 0.85,
        ),
        children: <Widget>[
          Container(
            color: Colors.brown[500],
            alignment: Alignment(0.0, 0.0),
            child: Text('ONE',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          ),
          Container(
            color: Colors.yellow[500],
            alignment: Alignment(0.0, 0.0),
            child: Text('TWO',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          ),
          Container(
            color: Colors.purple[500],
            alignment: Alignment(0.0, 0.0),
            child: Text('THREE',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          ),
        ]);
  }
}
