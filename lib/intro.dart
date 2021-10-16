import 'package:flutter/material.dart';

class MApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.blue[200],
        child: CustomPaint(
          painter: CurvePainter(),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 10, 0, 0),
                    child: RotationTransition(turns: AlwaysStoppedAnimation(30/360),
                      child: Image.asset('assets/images/loginemp.png',
                        height: 250,
                        width: 150,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 120, 0, 0),
                    child: RotationTransition(turns: AlwaysStoppedAnimation(30/360),
                      child: Image.asset('assets/images/visitor.png',
                        height: 250,
                        width: 150,
                      ),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: RotationTransition(turns: AlwaysStoppedAnimation(30/360),
                      child: Image.asset('assets/images/visitor1.png',
                        height: 250,
                        width: 150,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                    child: RotationTransition(turns: AlwaysStoppedAnimation(30/360),
                      child: Image.asset('assets/images/visitor2.png',
                        height: 250,
                        width: 150,
                      ),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[800];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(size.width*0.65, 0);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.25,
        size.width * 0.75, size.height * 0.45);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0.50,
        size.width * 0.75, size.height * 1);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}