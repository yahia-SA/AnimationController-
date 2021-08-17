import 'package:flutter/material.dart';


class Roate extends StatefulWidget {
  const Roate({Key? key}) : super(key: key);

  @override
  _Roate createState() => _Roate();
}

class _Roate extends State<Roate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
                    ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Explilcit Animation"),
        ),
        body: Center(
            child: RotationTransition(
          alignment: Alignment.center,
          turns: _controller,
          child: FlutterLogo(
            size: 100.0,
          ),
        )));
  }
}
