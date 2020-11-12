import 'package:calendario3/model/cuadrado.dart';
import 'package:calendario3/pages/form_page.dart';
import 'package:calendario3/widget/cuadradoFijo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'calendario Leire '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 var cuadrados=[
  Cuadrado("0,0","","",Color(0xFFFFFC107)),Cuadrado("0,1","","",Color(0xFFFFFC107)),Cuadrado("0,3","","",Color(0xFFFFFC107)),Cuadrado("0,4","","",Color(0xFFFFFC107)),Cuadrado("0,5","","",Color(0xFFFFFC107)),Cuadrado("0,6","","",Color(0xFFFFFC107)),Cuadrado("0,7","","",Color(0xFFFFFC107)),Cuadrado("0,8","","",Color(0xFFFFFC107)),Cuadrado("0,9","","",Color(0xFFFFFC107)),Cuadrado("0,10","","",Color(0xFFFFFC107)),
  Cuadrado("1,0","","",Color(0xFFFFFC107)),Cuadrado("1,1","","",Color(0xFF9E9E9E9E)),Cuadrado("1,3","","",Color(0xFF9E9E9E9E)),Cuadrado("1,4","","",Color(0xFF9E9E9E9E)),Cuadrado("1,5","","",Color(0xFF9E9E9E9E)),Cuadrado("1,6","","",Color(0xFF9E9E9E9E)),Cuadrado("1,7","","",Color(0xFF9E9E9E9E)),Cuadrado("1,8","","",Color(0xFF9E9E9E9E)),Cuadrado("1,9","","",Color(0xFF9E9E9E9E)),Cuadrado("1,10","","",Color(0xFF9E9E9E9E)),
  Cuadrado("2,0","","",Color(0xFFFFFC107)),Cuadrado("2,1","","",Color(0xFF9E9E9E9E)),Cuadrado("2,3","","",Color(0xFF9E9E9E9E)),Cuadrado("2,4","","",Color(0xFF9E9E9E9E)),Cuadrado("2,5","","",Color(0xFF9E9E9E9E)),Cuadrado("2,6","","",Color(0xFF9E9E9E9E)),Cuadrado("2,7","","",Color(0xFF9E9E9E9E)),Cuadrado("2,8","","",Color(0xFF9E9E9E9E)),Cuadrado("2,9","","",Color(0xFF9E9E9E9E)),Cuadrado("2,10","","",Color(0xFF9E9E9E9E)),
  Cuadrado("3,0","","",Color(0xFFFFFC107)),Cuadrado("3,1","","",Color(0xFF9E9E9E9E)),Cuadrado("3,3","","",Color(0xFF9E9E9E9E)),Cuadrado("3,4","","",Color(0xFF9E9E9E9E)),Cuadrado("3,5","","",Color(0xFF9E9E9E9E)),Cuadrado("3,6","","",Color(0xFF9E9E9E9E)),Cuadrado("3,7","","",Color(0xFF9E9E9E9E)),Cuadrado("3,8","","",Color(0xFF9E9E9E9E)),Cuadrado("3,9","","",Color(0xFF9E9E9E9E)),Cuadrado("3,10","","",Color(0xFF9E9E9E9E)),
  Cuadrado("4,0","","",Color(0xFFFFFC107)),Cuadrado("4,1","","",Color(0xFF9E9E9E9E)),Cuadrado("4,3","","",Color(0xFF9E9E9E9E)),Cuadrado("4,4","","",Color(0xFF9E9E9E9E)),Cuadrado("4,5","","",Color(0xFF9E9E9E9E)),Cuadrado("4,6","","",Color(0xFF9E9E9E9E)),Cuadrado("4,7","","",Color(0xFF9E9E9E9E)),Cuadrado("4,8","","",Color(0xFF9E9E9E9E)),Cuadrado("4,9","","",Color(0xFF9E9E9E9E)),Cuadrado("4,10","","",Color(0xFF9E9E9E9E)),
  Cuadrado("5,0","","",Color(0xFFFFFC107)),Cuadrado("5,1","","",Color(0xFF9E9E9E9E)),Cuadrado("5,3","","",Color(0xFF9E9E9E9E)),Cuadrado("5,4","","",Color(0xFF9E9E9E9E)),Cuadrado("5,5","","",Color(0xFF9E9E9E9E)),Cuadrado("5,6","","",Color(0xFF9E9E9E9E)),Cuadrado("5,7","","",Color(0xFF9E9E9E9E)),Cuadrado("5,8","","",Color(0xFF9E9E9E9E)),Cuadrado("5,9","","",Color(0xFF9E9E9E9E)),Cuadrado("5,10","","",Color(0xFF9E9E9E9E)),
  Cuadrado("6,0","","",Color(0xFFFFFC107)),Cuadrado("6,1","","",Color(0xFF9E9E9E9E)),Cuadrado("6,3","","",Color(0xFF9E9E9E9E)),Cuadrado("6,4","","",Color(0xFF9E9E9E9E)),Cuadrado("6,5","","",Color(0xFF9E9E9E9E)),Cuadrado("6,6","","",Color(0xFF9E9E9E9E)),Cuadrado("6,7","","",Color(0xFF9E9E9E9E)),Cuadrado("6,8","","",Color(0xFF9E9E9E9E)),Cuadrado("6,9","","",Color(0xFF9E9E9E9E)),Cuadrado("6,10","","",Color(0xFF9E9E9E9E)),
  Cuadrado("7,0","","",Color(0xFFFFFC107)),Cuadrado("7,1","","",Color(0xFF9E9E9E9E)),Cuadrado("7,3","","",Color(0xFF9E9E9E9E)),Cuadrado("7,4","","",Color(0xFF9E9E9E9E)),Cuadrado("7,5","","",Color(0xFF9E9E9E9E)),Cuadrado("7,6","","",Color(0xFF9E9E9E9E)),Cuadrado("7,7","","",Color(0xFF9E9E9E9E)),Cuadrado("7,8","","",Color(0xFF9E9E9E9E)),Cuadrado("7,9","","",Color(0xFF9E9E9E9E)),Cuadrado("7,10","","",Color(0xFF9E9E9E9E))
  ];
  

  @override
  Widget build(BuildContext context) {
    var dias =  ['HORAS', 'LUNES','MARTES','MIERC.','JUEVES','VIERNES'];
    var horas=['HORAS', '8.00\n8.55','8.55\n9.50','9.50\n10.45','10.45\n11.40','11.40\n12.05','12.05\n13.00','13.00\n13.55','13.55\n14.50'];
    var twoDList = List.generate(8, (i) => List(6), growable: false);//el primer valor es el número de líneas

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(5),//padding general alrededor
        crossAxisSpacing: 4.0,  
        mainAxisSpacing: 8.0,  
        crossAxisCount:6,
         children:[
          for(int row = 0 ; row < twoDList.length ; row++)
            for(int col = 0 ; col < twoDList[row].length ; col++)
              if(row==0 && col==0)
                 twoDList[0][0]=CuadradoFijo(c: Cuadrado("$row$col",dias[row],"",Colors.amber))
              else if(row==0 && col!=0)
                twoDList[0][col]=CuadradoFijo(c:Cuadrado("$row$col",dias[col],"",Colors.amber))
              else if (col==0)
                twoDList[row][0]=CuadradoFijo(c:Cuadrado("$row$col",horas[row],"",Colors.amber))
              else
                twoDList[row][col]=_generarCuadrado(cuadrados[int.parse("$row$col")]),
        ] 
     
      ),
      
    );
  }

  
  Widget _generarCuadrado(Cuadrado c){
    return Container(
      height: 200,
      width: 200,
      decoration:
          BoxDecoration(color: c.color, borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: ()async{
          var asignatura = Cuadrado(c.id,c.texto,c.aula,c.color);//creamos una variable de tipo Cuadrado
          Cuadrado response = await Navigator.push(context,//recogemos un objeto de tipo Cuadrado desde la página FormPage pasando la asignatura
            MaterialPageRoute(
              builder: (context) => FormPage(asignatura: asignatura),
            ),
          );
          
          if (response != null) {//si devuelve algo cambiamos los datos con los datos recibidos
            setState(() {
              c.texto = response.texto;
              c.aula=response.aula;
              c.color=response.color;
            }); 
            //Guardamos los datos en el array 
            cuadrados[int.parse(c.id)].color=response.color;
            cuadrados[int.parse(c.id)].texto=response.texto;
            cuadrados[int.parse(c.id)].aula=response.aula;
          }
         
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(c.texto),
            Text(c.aula),
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
        
      ));
  }
}
