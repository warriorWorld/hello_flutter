import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with TickerProviderStateMixin {
  bool isForward=false;
  Color mColor = Colors.brown;
  AnimationController _animationController;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _curvedAnimation,
          child: Container(
            color: mColor,
            child: Center(
              child: FlatButton(
                height: 50,
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    if(isForward) {
                      _animationController.forward();
                    }else{
                      _animationController.reverse();
                    }
                    isForward=!isForward;
                  });
                },
                child: Text("Test"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
