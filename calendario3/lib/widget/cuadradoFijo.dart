
import 'package:calendario3/model/cuadrado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuadradoFijo extends StatefulWidget {
  CuadradoFijo({Key key, Cuadrado this.c}) : super(key: key);
  Cuadrado c;
  @override
  _CuadradoFijoState createState() => _CuadradoFijoState();
}


class _CuadradoFijoState extends State<CuadradoFijo> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration:
          BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(5)),
      child: Column(
          children: [
            SizedBox(height: 10),
            Text(widget.c.texto),
            Expanded(
              flex: 1,
              child: Container(
                width: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      );
  }

}
