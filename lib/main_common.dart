import 'package:flavoured_app_with_codemagic/enviroments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  Color primaryColor;
  switch (env) {
    case Enviroments.dev:
      {
        primaryColor = Colors.red;
        break;
      }
    case Enviroments.prod:
      {
        primaryColor = Colors.blue;
        break;
      }

    default:
      {
        primaryColor = const Color(0xFFFFCA28);
        break;
      }
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MaterialApp(
        title: '$env App',
        theme: ThemeData(
          primaryColor: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text('$env App'),
          ),
          body: Center(
            child: Text('$env App'),
          ),
        ),
      ),
    ),
  );
}
