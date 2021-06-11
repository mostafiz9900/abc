import 'package:flutter/material.dart';

class CounterAnimation extends StatefulWidget {
  @override
  _CounterAnimationState createState() => _CounterAnimationState();
}

class _CounterAnimationState extends State<CounterAnimation> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;
 int count=0;
  @override
  void initState() {
    _controller = AnimationController(duration: Duration(seconds: 3), vsync: this);
   // animation=CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    animation= Tween(begin: 0.0, end: 5.0).animate(_controller)
    ..addStatusListener((status) {
      if(status==AnimationStatus.completed){
        _controller.reverse(from: 5.0);
      }else if(status == AnimationStatus.reverse){
        setState(() {
          count= count-400;
        });
      }
    })
      ..addListener(() {
      setState(() {

      });
    });
    _controller.addListener(() {
      setState(() {
      count++;
      debugPrint("print $count");
    });});
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(_controller.isAnimating?(count).toStringAsFixed(2):"Let's Begin",
      style: TextStyle(fontSize: 24.0 * animation.value + 16),
      ),
      onTap: () {
_controller.forward(from: 0.0);
      },
    );
  }
}

