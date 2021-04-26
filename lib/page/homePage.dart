import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operaciones = "";
  String resultadoOperaciones = "";
  String acumulativoResultado = "";
  String str;
  List<Text> listaResultados = [];
  var resulta;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora para dos digitos"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Container(
              color: Colors.red,
              child: Row(
                //children:[Text(resultadoOperaciones)],
                children: [
                  Column(
                    children: listaResultados,
                  )
                ],
              )),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          child: Row(
            children: [
              Text(operaciones + acumulativoResultado),
            ],
          ),
        ),
        Container(
          color: Colors.yellow,
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " √ ";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text(" √ ")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " x² ";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text(" x² ")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " % ";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text(" % ")),
                  ElevatedButton(
                      onPressed: () {
                        acumulativoResultado = "";
                      },
                      child: Text("ANS")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "7";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("7")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "8";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("8")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "9";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("9")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " / ";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text(" / "))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "4";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("4")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "5";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("5")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "6";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("6")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " x ";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text(" x "))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "1";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("1")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "2";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("2")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "3";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("3")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " - ";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text(" - "))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "0";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("0")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones = "";
                          acumulativoResultado = "";
                        });
                      },
                      child: Text("c")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          str = "";
                          print(operaciones);
                          var arreglo = operaciones.split(" ");
                          str = operaciones;
                          operaciones = "";
                          String str2 = "";
                          print(arreglo);
                          //validacion de operaciones

                          if (arreglo[1] == "√") {
                            if (arreglo[2] == "+" ||
                                arreglo[2] == "-" ||
                                arreglo[2] == "x" ||
                                arreglo[2] == "/" ||
                                arreglo[2] == "x²" ||
                                arreglo[2] == "√" ||
                                arreglo[2] == "%" ||
                                arreglo[2] == "" ||
                                arreglo[2] == " ") {
                              setState(() {
                                resultadoOperaciones = "Expresión malformada";
                                acumulativoResultado = str;
                              });
                            } else {
                              resulta = pow(int.parse(arreglo[2]), 0.5);

                              setState(() {
                                resultadoOperaciones = "$resulta";
                                acumulativoResultado = str;
                              });
                              print(resulta);
                              print("entro c113");
                            }
                          } else {
                            String op = arreglo[1];
                            operacionesBasicas(op, arreglo, str);

                            print("entro c112");
                          }
                          if (arreglo.length == 1) {
                            setState(() {
                              str2 = arreglo[0];
                              resultadoOperaciones = str2;
                              acumulativoResultado = str2;
                            });
                          }

                          setState(() {
                            listaResultados.add(Text("$resulta"));
                          });
                          print("entro c1");
                        });
                      },
                      child: Text("=")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " + ";
                        });
                      },
                      child: Text(" + "))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  void operacionesBasicas(String op, var strSplit, String str) {
    switch (op) {
      case "+":
        {
          resulta = (int.parse(strSplit[0]) + int.parse(strSplit[2]));

          setState(() {
            resultadoOperaciones = "$resulta";
            acumulativoResultado = str;
          });
        }
        break;
      case "-":
        {
          resulta = (int.parse(strSplit[0]) - int.parse(strSplit[2]));
          setState(() {
            resultadoOperaciones = "$resulta";
            acumulativoResultado = str;
          });
        }
        break;
      case "x":
        {
          double resulta = 0;
          if (strSplit[3] == "%") {
            resulta = (int.parse(strSplit[0]) * int.parse(strSplit[2])) * 0.01;
          } else {
            resulta = (double.parse(strSplit[0]) * double.parse(strSplit[2]));
          }

          setState(() {
            resultadoOperaciones = "$resulta";
            acumulativoResultado = str;
          });
        }
        break;
      case "/":
        {
          if (strSplit[2] != "0") {
            resulta = (int.parse(strSplit[0]) / int.parse(strSplit[2]));
            resultadoOperaciones = "$resulta";
            acumulativoResultado = str;
          } else {
            resulta = "Resultado Indefinido";

            setState(() {
              resultadoOperaciones = "$resulta";
              acumulativoResultado = str;
            });
          }
        }
        break;

      case "x²":
        {
          var resulta = pow(int.parse(strSplit[0]), int.parse(strSplit[2]));
          setState(() {
            resultadoOperaciones = "$resulta";
            acumulativoResultado = str;
          });
        }
        break;

      case "%":
        {
          var resulta = int.parse(strSplit[0]) * 0.01;
          setState(() {
            resultadoOperaciones = "$resulta";
            acumulativoResultado = str;
          });
        }
        break;
      default:
    }
  }
}
