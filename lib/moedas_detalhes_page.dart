import 'package:flutter/material.dart';

import 'models-moeda.dart';

class MoedasDetalhesPage extends StatefulWidget {
  Moeda moeda;

  MoedasDetalhesPage({Key? key, required this.moeda}) : super(key: key);

  @override
  _MoedasDetalhesPageState createState() => _MoedasDetalhesPageState();
}

class _MoedasDetalhesPageState extends State<MoedasDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome),
      ),
      body: Column(children: [
        Divider(),
        Row(
          children: [
            SizedBox(
              child: Image.asset(widget.moeda.icone),
              width: 50,
            ),
          ],
        ),
      ]),
    );
  }
}
