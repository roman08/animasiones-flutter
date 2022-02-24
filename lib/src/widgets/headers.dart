import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondos extends StatelessWidget {
  const HeaderBordesRedondos({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        color: Color(0xff615AAB),
      ),
    );
  }
}


class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDIgonalPainter(),
      ),
      
    );
  }
}

class _HeaderDIgonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = const Color(0xff615AAB);
    //  DIBUJA LINEA
    // paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar
    path.moveTo(0, size.height * 0.35);
    // (X,Y)
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
      
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = const Color(0xff615AAB);
    //  DIBUJA LINEA
    // paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 10;

    final path = new Path();

    // Dibuja LAPARTE DE ARRIBA DEL TRIANGULO
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    // Dibuja LAPARTE DE ABAJO DEL TRIANGULO
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



//  HEADER PICO
class HeaderPico extends StatelessWidget {
  const HeaderPico({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
      
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = const Color(0xff615AAB);
    //  DIBUJA LINEA
    // paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 10;

    final path = Path();

    // DIBUJAR
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5,size.height * 0.30 );
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


//  HEADER CURVO
class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
      
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = const Color(0xff615AAB);
    //  DIBUJA LINEA
    // paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 10;

    final path = Path();

    // DIBUJAR
    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.5,size.height * 0.40 , size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.30);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



//  HEADER WAVE
class HeaderWave extends StatelessWidget {
  const HeaderWave({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
      
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = const Color(0xff615AAB);
    //  DIBUJA LINEA
    // paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 10;

    final path = Path();

    // DIBUJAR
    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.25,size.height * 0.40 , size.width * 0.5, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.75,size.height * 0.20 ,size.width,  size.height * 0.30);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.30);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


//  HEADER WAVE DOS
class HeaderWaveDos extends StatelessWidget {
  const HeaderWaveDos({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWaveDosPainter(),
      ),
      
    );
  }
}

class _HeaderWaveDosPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = const Color(0xff615AAB);
    //  DIBUJA LINEA
    paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 10;

    final path = Path();

    // DIBUJAR
    path.moveTo(0, size.height);
    path.lineTo(0 , size.height * 0.7 );
    path.quadraticBezierTo(size.width * 0.2,size.height * 0.65 , size.width * 0.5, size.height * 0.7);
    path.quadraticBezierTo(size.width *0.8,size.height * 0.75 , size.width , size.height * 0.7);
    // path.quadraticBezierTo(size.width * 0.75,size.height * 0.20 ,size.width,  size.height * 0.30);
    path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.30);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



//  HEADER WAVE
class HeaderWaveGradient extends StatelessWidget {
  const HeaderWaveGradient({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
      
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    // ignore: unnecessary_new
    final Rect rect = new Rect.fromCircle(
      center: const Offset(0.0, 55.0),
      radius:  180
    );
    // ignore: unnecessary_new, prefer_const_constructors
    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
  
      // ignore: prefer_const_literals_to_create_immutables
      colors:<Color>[
         const Color(0xff6D05E8),
         const Color(0xffC012FF),
         const Color(0xff6D05FA),
      ] 
    );

    final paint = Paint()..shader = gradiente.createShader(rect);
    // Propiedades
    paint.color = Colors.red;
    //  DIBUJA LINEA
    // paint.style = PaintingStyle.stroke;
    //  RELLENA
    paint.style = PaintingStyle.fill;
    // GROSOR DE LA LINEA
    paint.strokeWidth = 10;

    final path = Path();

    // DIBUJAR
    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.25,size.height * 0.40 , size.width * 0.5, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.75,size.height * 0.20 ,size.width,  size.height * 0.30);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.30);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}