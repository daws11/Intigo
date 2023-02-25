import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/view/login_page.dart';
import 'package:intigo_tuento/view/register_page.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: backgroundImage,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 214,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text(
                      "Pilih Peranmu:",
                      style: monts32W800,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 398,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            bottom: 110,
                            right: 30,
                            top: 10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LoginPage());
                                },
                                child: Image.asset(
                                  "assets/images/audiens_pilihan.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            top: 110,
                            left: 30,
                            right: 0.1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, top: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(RegisterPage());
                                },
                                child: Image.asset(
                                    "assets/images/kreator_pilihan.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
