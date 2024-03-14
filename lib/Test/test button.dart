// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          gradient: isHovered
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromARGB(255, 1, 167, 95), Colors.blue],
                )
              : LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.red],
                ),
        ),
        child: Center(
          child: Text(
            'Button',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class TestButton extends StatefulWidget {
  const TestButton({super.key});

  @override
  State<TestButton> createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(),
            SizedBox(
              height: 100,
            ),
            CustomButton(),
            Container(
              color: isHover
                  ? Colors.amber
                  : const Color.fromARGB(255, 184, 185, 184),
              height: 100,
              width: 200,
              child: Center(child: Text("Button 1")),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: const Color.fromARGB(255, 196, 197, 196),
              height: 100,
              width: 200,
              child: Center(child: Text("Button 2")),
            )
          ],
        ),
      )),
    );
  }
}



class FlyingBubbles extends StatefulWidget {
  @override
  _FlyingBubblesState createState() => _FlyingBubblesState();
}

class _FlyingBubblesState extends State<FlyingBubbles> {
  late List<Bubble> bubbles;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    bubbles = [];
    timer = Timer.periodic(Duration(milliseconds: 200), (Timer t) {
      _addBubble();
    });

    timer = Timer.periodic(Duration(milliseconds: 400), (Timer t) {
      _removeBubble();
    });

    timer = Timer.periodic(Duration(milliseconds: 50), (Timer t) {
      _updateBubbles();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
void _addBubble() {
    final random = Random();
    if (bubbles.length < 10 && random.nextDouble() > 0.8) {
      double x = random.nextDouble();
      double y = random.nextDouble();
      double dx = random.nextDouble() * 0.2 - 0.1;
      double dy = random.nextDouble() * 0.2 - 0.1;
      setState(() {
        bubbles.add(Bubble(
          position: Offset(x, y),
          direction: Offset(dx, dy),
          size: random.nextDouble() * 15 + random.nextInt(70)+20,
        ));
      });
    }
  }
  void _removeBubble() {
    final random = Random();
    if (random.nextDouble() > 0.8 && bubbles.length > 0) {
      setState(() {
        bubbles.removeAt(random.nextInt(bubbles.length));
      });
    }
  }

  void _updateBubbles() {
    setState(() {
      for (int i = 0; i < bubbles.length; i++) {
        Bubble bubble = bubbles[i];
        bubble.position += bubble.direction * 0.005;
        if (bubble.position.dy < 0.0 || bubble.position.dy > 1.0) {
          bubble.direction = Offset(bubble.direction.dx, bubble.direction.dy * -1.0);
        }
        if (bubble.position.dx < 0.0 || bubble.position.dx > 1.0) {
          bubble.direction = Offset(bubble.direction.dx * -1.0, bubble.direction.dy);
        }
        bubbles[i] = bubble;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue[200]!, Colors.white],
          ),
        ),
        child: Stack(
          children: [
            for (var bubble in bubbles)
              Positioned(
                left: MediaQuery.of(context).size.width * bubble.position.dx,
                top: MediaQuery.of(context).size.height * bubble.position.dy,
                child: Container(
                  width: bubble.size,
                  height: bubble.size,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                
                ),
              ),
      
              Positioned(
                top: 300,
                left:400,
                  child: Column(
                    children: [
                   CustomButton(),
                    ],
                  ), ),
              Positioned(
                top: 300,
                right:400,
                  child: Column(
                    children: [
                   CustomButton(),
                    ],
                  ), )
          ],
        ),
      ),
    );
  }
}

class Bubble {
  Offset position;
  Offset direction;
  double size;

  Bubble({
    required this.position,
    required this.direction,
    required this.size,
  });
}