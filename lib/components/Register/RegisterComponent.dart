
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/components/Register/RegisterForm.dart';
import 'package:toko_gitar_flutter/size_config.dart';

class RegisterComponent extends StatefulWidget {
  @override
  _RegisterComponent createState() => _RegisterComponent();
}

class _RegisterComponent extends State<RegisterComponent> {
  @override
  Widget build(BuildContext context) {  
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'Registrasi',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SignUpform()
            ],
          ),
        ),
      ),
    );
  }
}
