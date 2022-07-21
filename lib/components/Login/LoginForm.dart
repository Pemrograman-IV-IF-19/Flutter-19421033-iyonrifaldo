import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/components/default_button_custome_collor.dart';
import 'package:toko_gitar_flutter/components/screens/RegisterScreens.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constans.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInform>{
  final _formKey =GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
                        txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
        buildUserName(),
        SizedBox(height: getProportionateScreenWidth(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        Row(
          children: [
            Checkbox(
              value: remeber, 
              onChanged: (value){
                setState(() {
                  remeber = value;
                });
              }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                "Lupa Password", 
                style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
          ],
        ),
        DefaultButtonCustomeColor(
          color: kPrimaryColor, 
          text: "Masuk",
          press: (){},         
        ),
        SizedBox(
          height: 20,
          ),  // SizeBox
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, RegisterScreen.routeName);
          },
          child: Text(
          "Belum Punya Akun ? Daftar Disini ",
          style: TextStyle(decoration : TextDecoration.underline),
         ), 
        )
      ],
      ),
      );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan Username anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor ),  
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
        )),
      );
}

TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukan Password anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor ),  
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg",
        )),
      );
  }
}
