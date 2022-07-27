import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:survey/assets.dart';
import 'package:survey/widgets/text_input_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.loginBackground), fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          padding: const EdgeInsets.only(left: 24, right: 24),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 120),
                child: SvgPicture.asset(Assets.nimbleLogo),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: const TextInputWidget(
                  hintText: "Email",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 14),
                child: const TextInputWidget(
                  hintText: "Password",
                  isPasswordInput: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 56,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                        color: Color(0xff15151A),
                        fontSize: 17,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
