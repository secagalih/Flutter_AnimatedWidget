import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            MuterMuter(controller.aniC, 7),
            SizedBox(
              height: 50,
            ),
            MuterMuter(controller.aniC, 6),
            SizedBox(
              height: 50,
            ),
            MuterMuter(controller.aniC, 5),
          ],
        ),
      ),
    );
  }
}

class MuterMuter extends AnimatedWidget {
  final animate;
  final double speed;
  MuterMuter(this.animate, this.speed) : super(listenable: animate);

  get _progress => listenable as Animation;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: animate.value * pi * speed,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.purple,
      ),
    );
  }
}
