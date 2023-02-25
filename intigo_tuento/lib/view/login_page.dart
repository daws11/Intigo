import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:intigo_tuento/view/dashboard.dart';
import 'package:intigo_tuento/view/register_page.dart';

import '../themes/colors.dart';
import '../themes/fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              image: backgroundImage,
              gradient: gradientPrimary2,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 48, right: 20),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    const Color(0xffD9D9D9).withOpacity(0.1)),
                            child: IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: const Icon(Icons.arrow_back_outlined),
                              color: Colors.white,
                            )),
                        const Spacer(),
                        Image.asset(
                          width: 96,
                          height: 25,
                          "assets/images/Logo3.png",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    child: Text(
                      "Masuk Akun",
                      style: headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 59),
                    child: Text(
                      "Masukkan nomor handphone dan kata sandi akun Anda yang sudah terdaftar.",
                      style: headline2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextLap(
                        "Nomor Handphone",
                        "Nomor Handphone",
                        widget._phoneController,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: PasswordField(
                          widget._passwordController, "Kata Sandi")),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text("Lupa Kata Sandi?",
                          style: TextStyle(
                            color: const Color(0xffE75FC2),
                            fontSize: 14,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.right),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Text("Dengan membuat akun, berarti anda telah menyetujui:",
                      style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: 13,
                        fontFamily: GoogleFonts.nunito().fontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Syarat dan Ketentuan.",
                        style: TextStyle(
                          color: const Color(0xffE75FC2),
                          fontSize: 13,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum memiliki akun?",
                        style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 13,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(RegisterPage());
                        },
                        child: Text(
                          " Daftar Sekarang",
                          style: TextStyle(
                            color: const Color(0xffE75FC2),
                            fontSize: 13,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(DashboardView());
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 14,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE75FC2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class TextLap extends StatefulWidget {
  TextLap(this.namaLabel, this.namaHint, this._phoneController);
  final String namaLabel;
  final String namaHint;
  TextEditingController _phoneController = TextEditingController();

  @override
  State<TextLap> createState() => _TextLapState();
}

class _TextLapState extends State<TextLap> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (val) {},
      controller: widget._phoneController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 19.02, right: 23),
          child: Iconify(
            MaterialSymbols.phone_android_outline_rounded,
            color: Color(0xffA0A0A0),
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 11.45,
          minHeight: 18,
        ),
        prefixIconColor: const Color(0xffA0A0A0),
        hintText: widget.namaHint,
        hintStyle: hintLabel,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffFFFFFF)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffFFFFFF)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final TextEditingController _passwordController;
  final String text;
  PasswordField(this._passwordController, this.text);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  var _isObscure = true;
  Widget build(BuildContext context) {
    return TextField(
        obscureText: _isObscure,
        controller: widget._passwordController,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 19.02, right: 23),
            child: Iconify(
              Ph.password,
              color: Colors.grey,
            ),
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 19,
            minHeight: 15,
          ),
          hintText: widget.text,
          labelStyle: TextStyle(
            color: const Color(0xffA0A0A0),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: GoogleFonts.inter().fontFamily,
            height: 2.5,
          ),
          hintStyle: hintLabel,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: Icon(
              _isObscure ? Icons.visibility_off : Icons.visibility,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
        ));
  }
}
