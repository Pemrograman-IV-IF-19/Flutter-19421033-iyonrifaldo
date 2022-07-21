import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/components/default_button_custome_collor.dart';
import 'package:toko_gitar_flutter/components/screens/LoginScreens.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constans.dart';

class SignUpform extends StatefulWidget {
  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpform> {
  final _formKey = GlobalKey<FormState>();
  String? nama;
  String? email;
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtNama = TextEditingController(),
      txtEmail = TextEditingController(),
      txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildnama(), //buat nampilin fildnya
          SizedBox(height: getProportionateScreenHeight(30)), //jarak
          buildusername(), //buat nampilin fildnya
          SizedBox(height: getProportionateScreenHeight(30)), //jarak
          buildemail(), //buat nampilin fildnya
          SizedBox(height: getProportionateScreenHeight(30)), //jarak
          buildPassword(), //buat nampilin fildnya
          SizedBox(height: getProportionateScreenHeight(30)), //jarak
          DefaultButtonCustomeColor(
              color: kPrimaryColor, text: "Register", press: () {}),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Text(
              "Sudah Punya Akun ? Masuk Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildnama() {
    // konfigurasi text field nama
    return TextFormField(
      controller: txtNama,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Nama Lengkap',
          hintText: 'Masukan nama lengkap Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "/icons/User.svg",
          )),
    );
  } //untuk field nya

  TextFormField buildemail() {
    // konfigurasi text field nama
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Alamat Email',
          hintText: 'Masukan Email Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "/icons/Mail.svg",
          )),
    );
  } //untuk field nya

  TextFormField buildusername() {
    // konfigurasi text field username
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'username',
          hintText: 'Masukan Username Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "/icons/User.svg",
          )),
    );
  } //untuk field nya

  TextFormField buildPassword() {
    // konfigurasi text field password
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "/icons/Lock.svg",
          )),
    );
  } //untuk field nya
}
