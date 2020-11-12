
import 'package:calendario3/model/CircleColorPicker.dart';
import 'package:calendario3/model/cuadrado.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget  {
  final Cuadrado asignatura;  
  FormPage({this.asignatura});  
  
  @override
  Widget build(BuildContext context) {
    asignatura.color=Colors.blue;//por si no cambia el color que se le ponga el que esta definido en el picker
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario calendario'),
      ),
      body: Container(//creamos un contenedor
        padding: EdgeInsets.all(12.0),
        alignment: Alignment.center,//alineamos en el centro los elementos
        child: ListView.builder(//creamos una lista para que cuando el usuario escriba no muestre un error de tamaño de pantalla
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[//los hijos serán el textfield, el color picker y los botones para enviar los datos o resetearlos
                  Container(
                    child:Column(
                      children:<Widget> [
                        Text("Asignatura:"),
                        TextField(
                          controller: TextEditingController()..text = asignatura.texto,
                          onChanged: (valor){//cuando cambie el valor lo asignamos a la variable asignatura
                            asignatura.texto=valor;
                          },
                        ), 
                        Text("Aula:"),
                        TextField(
                          controller: TextEditingController()..text = asignatura.aula,
                          onChanged: (valor){//cuando cambie el valor lo asignamos a la variable asignatura
                            asignatura.aula=valor;
                          },
                        ), 
                        Text('Color'),
                        Center(
                          child: CircleColorPicker(//colorpickeer
                          initialColor: Colors.blue,
                          onChanged: (color) => asignatura.color= color,
                          size: const Size(240, 240),
                          strokeWidth: 4,
                          thumbSize: 36,
                        )),
                      ],
                    ),
                  ),
                  Row(//botones
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [              
                    RaisedButton(
                      child: Text("Reset"),
                      onPressed: () {//dejamos los valores de asignatura como al inicio de la aplicacion
                        asignatura.texto="";
                        asignatura.aula="";
                        asignatura.color=Color(0xFF9E9E9E9E);
                        Navigator.of(context).pop(asignatura);//pasamos la asignatura al main.
                      }
                    ), 
                    RaisedButton(
                      child: Text("OK"),
                      onPressed: () {//enviamos la asignatura con los datos actuales
                        Navigator.of(context).pop(asignatura);
                      }
                    ),
                  ],),
                ],
              );
            }
        ),
      )
    );
  }
}

