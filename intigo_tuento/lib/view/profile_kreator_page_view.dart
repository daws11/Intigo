import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/widget/small_detail.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ProfileKreator extends StatelessWidget {
  const ProfileKreator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(image: backgroundImage),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 62),
            child: AppBarCustom(header: "Profile Kreator"),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: 382,
                    height: 338,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/profile/image_creator1.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(60)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                      ),
                      child: SizedBox(
                        width: 187,
                        height: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Falah Asyraf",
                                    style: monts16W700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                VerifiedAcc(20),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Konten Kreator, Gamer",
                                    style: monts12W700),
                                const Spacer(),
                                const RatingKreator(rating: 5.0, size: 15),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: SizedBox(
                        height: 34,
                        width: 141,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: linearGradientCard,
                              borderRadius: BorderRadius.circular(6)),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: const MaterialStatePropertyAll(0),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.only(left: 4, right: 3)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Request Jadwal",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.justify,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: ButtonProfileCreator(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 12),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset("assets/images/jadwal_kosong.png"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Belum ada viedo call tersedia",
                        style: monts16W700,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 363,
                        height: 44,
                        child: Text(
                          "Yuk, request jadwal untuk sesi video call ke kreator agar kamu bisa berinteraksi dengannya!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 25, top: 19, right: 23, bottom: 30),
          //   child: Container(
          //     width: 382,
          //     height: 210,
          //     child: SingleChildScrollView(
          //       scrollDirection: Axis.vertical,
          //       child: Column(
          //         children: [
          //           BannerLokalProfilKreator(),
          //           BannerLokalProfilKreator(),
          //           BannerLokalProfilKreator(),
          //           BannerLokalProfilKreator(),
          //         ],
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    ));
  }
}

class BannerLokalProfilKreator extends StatelessWidget {
  const BannerLokalProfilKreator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19),
      child: BannerKreator(
          kreatorName: "Falah Asyraf",
          tanggal: "Senin, 27 Februari",
          title: "Menjadi Lebih baik",
          harga: -1,
          isPrivate: false),
    );
  }
}

class ButtonProfileCreator extends StatelessWidget {
  const ButtonProfileCreator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 31,
          width: 131,
          child: OutlineGradientButton(
            backgroundColor: const Color(0xffA53988).withOpacity(0.7),
            elevation: 0,
            padding: EdgeInsets.zero,
            child: ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              ),
              onPressed: () {},
              child: Text(
                "Group Call",
                style: monts16W700,
              ),
            ),
            strokeWidth: 1,
            gradient: linearGradientCard,
            radius: const Radius.circular(6),
          ),
        ),
        const SizedBox(
          width: 9,
        ),
        SizedBox(
          height: 31,
          width: 131,
          child: OutlineGradientButton(
            backgroundColor: const Color(0xffA53988).withOpacity(0.7),
            elevation: 0,
            padding: EdgeInsets.zero,
            child: ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              ),
              onPressed: () {},
              child: Text(
                "Private Call",
                style: monts16W700,
              ),
            ),
            strokeWidth: 1,
            gradient: linearGradientCard,
            radius: const Radius.circular(6),
          ),
        ),
      ],
    );
  }
}
