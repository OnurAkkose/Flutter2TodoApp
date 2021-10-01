import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FFF9EC"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Image.asset("assets/images/logo.png"),
            SizedBox(
              height: Get.height * 0.002,
            ),
            Text("Welcome back, please login", style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w700)),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  contentPadding: EdgeInsets.all(20.0),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home");
                },
                style: ElevatedButton.styleFrom(
                    primary: HexColor("6488E4"), fixedSize: Size(200, 20)),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(),
                )),
            SizedBox(
              height: Get.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
