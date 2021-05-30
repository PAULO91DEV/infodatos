import 'package:flutter/material.dart';

class PepRelatedCorporateBondTableWidget extends StatefulWidget {
  PepRelatedCorporateBondTableWidget({
    Key key,
  }) : super(key: key);

  @override
  _PepRelatedCorporateBondTableWidgetState createState() =>
      _PepRelatedCorporateBondTableWidgetState();
}

class _PepRelatedCorporateBondTableWidgetState
    extends State<PepRelatedCorporateBondTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('Detalhes do resultado da consulta ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.5, color: Colors.indigo)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Nome/Razão Social",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 700,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "CPF/CNPJ",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 700,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Sexo",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Pseudônimos",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 700,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Data Nascimento/Fundação",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 700,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Situação RF",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 700,
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Operação Polícia Federal",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
