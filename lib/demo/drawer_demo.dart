import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("dingjie", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                accountEmail: Text("123456789@163.com", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                currentAccountPicture: CircleAvatar(
                  // backgroundImage: NetworkImage("https://images.pexels.com/photos/414032/pexels-photo-414032.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  backgroundImage: AssetImage("images/header.png"),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 60.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  image: DecorationImage(
                    image: AssetImage("images/backgroud.jpg"),
                    fit: BoxFit.fill,
                    // colorFilter: ColorFilter.mode(
                    //   // Colors.pink.withOpacity(0.4),
                    //   BlendMode.hard/Light,

                    // ),
                  )
                ),
              ),
              ListTile(
                title: Text('messages', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, color: Colors.black12, size:22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, color: Colors.black12, size:22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Setting', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, color: Colors.black12, size:22.0),
                onTap: () => Navigator.pop(context),
              ),
            ]
          )
        );
  }
}

 