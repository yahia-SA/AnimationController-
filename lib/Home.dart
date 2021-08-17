import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _controller;
@override
  void initState() {
    super.initState();
    _controller=AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 200,
      duration: Duration(seconds: 1)
    );
        _controller.repeat(reverse: true);
        _controller.addListener(() {setState(() {
          
        });});
  }
  @override
  
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: _controller.value),
        width: 100,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
            ),
        ),
        
      ),
    );
  }
}