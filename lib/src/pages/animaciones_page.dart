import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {
  const AnimacionesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Center(
        child: const CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin {
  
  late AnimationController controller;
  late Animation<double> rotacion;
  late Animation<double> opacidad;
  late Animation<double> opacidadOut;
  late Animation<double> moverDerecha;
  late Animation<double> agrandar;

  @override
  void initState() {

    // ignore: unnecessary_new
    controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000)
    );

    rotacion = Tween(
      begin: 0.0,
      end: 2 * Math.pi
    ).animate( 
      CurvedAnimation(parent: controller, curve: Curves.easeOut)
    );

    opacidad = Tween( 
      begin: 0.1 , 
      end: 1.0
    ).animate(
      CurvedAnimation(parent: controller, curve:  const Interval(0, 0.5, curve: Curves.easeOut))
    );

    opacidadOut = Tween( 
      begin: 0.0 , 
      end: 1.0
    ).animate(
      CurvedAnimation(parent: controller, curve:  const Interval(0.75, 1.0, curve: Curves.easeOut))
    );

    moverDerecha = Tween(
      begin: 0.0,
      end: 200.0
    ).animate( 
       CurvedAnimation(parent: controller, curve:  Curves.easeOut)
     );

    agrandar = Tween(
      begin: 0.0,
      end: 2.0
    ).animate( 
      CurvedAnimation(parent: controller, curve:  Curves.easeOut)
    );

    controller.addListener(() {
      if( controller.status == AnimationStatus.completed) {
        // controller.reverse();
        controller.repeat();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    // PLAY
    controller.forward();

    return AnimatedBuilder(
      animation: controller , 
      child: _Rectangulo(),
      builder: ( BuildContext context, Widget? childRectangulo){
        return Transform.translate(
          offset: Offset(moverDerecha.value,0),
          child: Transform.rotate(
            angle: rotacion.value,
            child: Opacity(
              opacity: opacidad.value -opacidadOut.value,
              child: Transform.scale(
                scale: agrandar.value,
                child: childRectangulo
                ),
            )
            ),
        );
      },
    );
  }
}






class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       // ignore: prefer_const_constructors
       decoration: BoxDecoration(
         color: Colors.green
       ),
     );
   }
}