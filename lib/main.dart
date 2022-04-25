import 'package:flutter/material.dart';
import 'package:flutter_aula_1/repositores/favoritas_repository.dart';
import 'package:provider/provider.dart';
import 'configs/app_settings.dart';
import 'meu_aplicativo.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: MeuAplicativo(),
    ),
  );
}
