
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/components/screens/LoginScreens.dart';
import 'package:toko_gitar_flutter/components/screens/RegisterScreens.dart';

final Map<String, WidgetBuilder> routes = {
LoginScreen.routeName: (context) => LoginScreen(),
RegisterScreen.routeName: (context) => RegisterScreen()
};

