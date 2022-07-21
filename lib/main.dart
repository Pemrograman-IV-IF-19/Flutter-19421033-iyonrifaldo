import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/components/screens/LoginScreens.dart';
import 'package:toko_gitar_flutter/routes.dart';
import 'package:toko_gitar_flutter/theme.dart';

void main() async{
runApp(
  MaterialApp(
    title: "Toko Gitar Keren",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
