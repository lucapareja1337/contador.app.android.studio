import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:"Contador de Pessoas",
      home: Home()
      ),);
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoa = 0;
  String _infotext = "Pode Entrar";

  void _changePessoa(int delta){
    setState(() {
      _pessoa+=delta;
    });

    if(_pessoa < 0 ){
        _infotext = "Mundo Invetido?!";
    }
    else if (_pessoa<=10){
      _infotext = "Pode Entrar!";
    }
    else{
      _infotext = "Lotado";
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset(
            "Images/restaurante.jpg",
            fit:BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text(
                  "Pessoas: $_pessoa",
                  style:TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding:EdgeInsets.all(10.0),
                      child: FlatButton(onPressed: (){
                        _changePessoa(1);
                      },
                          child: Text("+1",
                              style:TextStyle(color:Colors.white,
                                  fontSize:40.0)
                          )
                      )
                  ),
                  Padding(
                      padding:EdgeInsets.all(10.0),
                      child: FlatButton(onPressed: (){
                        _changePessoa(-1);
                      },
                          child: Text("-1",
                              style:TextStyle(color:Colors.white,
                                  fontSize:40.0)
                          )
                      )
                  ),
                ],
              ),
              Text(
                  _infotext,
                  style:TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold)
              ),
            ],
          )
        ]
    );
  }
}

