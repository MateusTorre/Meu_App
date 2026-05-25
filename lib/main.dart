import 'package:flutter/material.dart';
import 'pages/tela_home.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, 
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Meu App de Icones',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue, 
        useMaterial3: true,
      ),
      home: const TelaHome(),
    );
  }
}
