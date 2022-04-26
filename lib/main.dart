import 'package:flutter/material.dart';
import 'package:flutter_aula_1/repositores/favoritas_repository.dart';
import 'package:provider/provider.dart';
import 'configs/app_settings.dart';
import 'configs/hive_config.dart';
import 'meu_aplicativo.dart';
import 'repositores/conta_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContaRepository()),
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: MeuAplicativo(),
    ),
  );
}
