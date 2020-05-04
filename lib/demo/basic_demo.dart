import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //color: Colors.pink[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://images.pexels.com/photos/325963/pexels-photo-325963.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5), 
            BlendMode.hardLight 
          )

        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            //color: Colors.blueAccent,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(

                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,

              ),
              //borderRadius: BorderRadius.circular(16.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0),
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0), 
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 1.0,  //阴影程度
                  spreadRadius: -50.0,    //阴影扩散程度,正数扩大，负数减小

                ),
              ],
              shape: BoxShape.circle,//shape改变盒子的形状，在设计盒子圆角时，不能设为圆形
              
              //镜像渐变
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ]
              // ),
              // 线性渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ]
      ),
    );
  }
}



class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'dingjie',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),

        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          )
        ]
      )
    );
  }
  

}

class TextDemo extends StatelessWidget{

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《$_title》 —— $_author。君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,          //文字最多显示3行
      overflow: TextOverflow.ellipsis,    //溢出部分省略号表示
    );
  }
}