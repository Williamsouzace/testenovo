import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp( MaterialApp(
    title: "Calculadora",
    home: HomeCalculadora(),
    color: Colors.green,

  ));

}

class HomeCalculadora extends StatefulWidget {

  @override
  _HomeCalculadoraState createState() => _HomeCalculadoraState();

}

class _HomeCalculadoraState extends State<HomeCalculadora> {

  double _estado = 0;
  double _numero = 0;
  String _controle = 'padrao';

  Nove(){
    setState(() {
      if(_estado == 0){
        _estado = 9;
      }else{
        _estado = (10*_estado) + 9;
      }
    });
  }

  Oito(){
    setState(() {
      if(_estado == 0){
        _estado = 8;
      }else{
        _estado = (10*_estado) + 8;
      }
    });
  }
  Sete(){
    setState(() {
      if(_estado == 0){
        _estado = 7;
      }else{
        _estado = (10*_estado) + 7;
      }
    });
  }
  Seis(){
    setState(() {
      if(_estado == 0){
        _estado = 6;
      }else{
        _estado = (10*_estado) + 6;
      }
    });
  }
  Cinco(){
    setState(() {
      if(_estado == 0){
        _estado = 5;
      }else{
        _estado = (10*_estado) + 5;
      }
    });
  }
  Quatro(){
    setState(() {
      if(_estado == 0){
        _estado = 4;
      }else{
        _estado = (10*_estado) + 4;
      }
    });
  }
  Tres(){
    setState(() {
      if(_estado == 0){
        _estado = 3;
      }else{
        _estado = (10*_estado) + 3;
      }
    });
  }
  Dois(){
    setState(() {
      if(_estado == 0){
        _estado = 2;
      }else{
        _estado = (10*_estado) + 2;
      }
    });
  }
  Um(){
    setState(() {
      if(_estado == 0){
        _estado = 1;
      }else{
        _estado = (10*_estado) + 1;
      }
    });
  }
  Zero(){
    setState(() {
      if(_estado == 0){
        _estado = 0;
      }else{
        _estado = (10*_estado) + 0;
      }
    });
  }
  Somar(){
    setState(() {
      _numero = _estado;
      _estado = 0;
      _controle = 'Somar';
    });
  }
  Dividir(){
    setState(() {
      _numero = _estado;
      _estado = 0;
      _controle = 'Dividir';
    });
  }
  Subtrair(){
    setState(() {
      _numero = _estado;
      _estado = 0;
      _controle = 'Subtrair';
    });
  }
  Multiplicar(){
    setState(() {
      _numero = _estado;
      _estado = 0;
      _controle = 'Multiplicar';
    });
  }
  igual(){
    setState(() {
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Column(
            children: [
              Text(
                "$_estado",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  RaisedButton(
                      child: Text("9"),
                      onPressed: Nove
                  ),
                  RaisedButton(
                      child: Text("8"),
                      onPressed: Oito
                  ),
                  RaisedButton(
                      child: Text("7"),
                      onPressed: Sete
                  ),

                  RaisedButton(
                      child: Text("/"),
                      onPressed: Dividir
                  ),
                ],
              ),
              Row(
                children: [
                  RaisedButton(
                      child: Text("6"),
                      onPressed: Seis
                  ),
                  RaisedButton(
                      child: Text("5"),
                      onPressed: Cinco
                  ),
                  RaisedButton(
                      child: Text("4"),
                      onPressed: Quatro
                  ),
                  RaisedButton(
                      child: Text("x"),
                      onPressed: Multiplicar
                  ),
                ],
              ),
              Row(
                children: [
                  RaisedButton(
                      child: Text("3"),
                      onPressed: Tres
                  ),
                  RaisedButton(
                      child: Text("2"),
                      onPressed: Dois
                  ),
                  RaisedButton(
                      child: Text("1"),
                      onPressed: Um
                  ),
                  RaisedButton(
                      child: Text("-"),
                      onPressed: Subtrair
                  ),
                ],
              ),
              Row(
                children: [
                  RaisedButton(
                      child: Text("."),
                      onPressed: (){}
                  ),
                  RaisedButton(
                      child: Text("0"),
                      onPressed: (){}
                  ),
                  RaisedButton(
                      child: Text("="),
                      onPressed: (){}
                  ),
                  RaisedButton(
                      child: Text("+"),
                      onPressed: Somar
                  ),
                ],
              ),
            ],
          )

        ],


      ),

    );
  }
}
