import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/view/bill/top_up_bill.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:
              BoxDecoration(gradient: gradientPrimary, image: backgroundImage),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 48, left: 24),
                child: AppBarCustom(header: "Top Up"),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 38),
                child: Text("Pilih nominal koin", style: headlineRekomendasi),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Row(children: [
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/koin/Koin15.png")),
                    SizedBox(width: 20),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/koin/Koin25.png")),
                    SizedBox(width: 20),
                    Image.asset("assets/images/koin/Koin50.png"),
                  ]),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Row(children: [
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/koin/Koin100.png")),
                    SizedBox(width: 20),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/koin/Koin200.png")),
                    SizedBox(width: 20),
                    Image.asset("assets/images/koin/Koin500.png"),
                  ]),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 41, right: 28),
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: linearGradientCard,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 50,
                    width: 361,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Iconify(Ic.round_add_circle_outline,
                              color: Colors.white, size: 23),
                          SizedBox(width: 5),
                          Text("Atau, masukin nominal yang kamu mau",
                              style: titleKreator)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 292),
              Padding(
                padding: const EdgeInsets.only(left: 41, right: 31),
                child: Container(
                  decoration: BoxDecoration(
                    color: magenta,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 50,
                  width: 368,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Get.to(TopUpBill());
                      },
                      child: Text("Bayar", style: headlineRekomendasi)),
                ),
              )
            ],
          )),
    );
  }
}
