import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:intigo_tuento/view/notification_page.dart';
import 'package:intigo_tuento/view/tantangan_page.dart';
import 'package:intigo_tuento/view/top_up_koin.dart';
import 'package:intigo_tuento/widget/small_detail.dart';

import '../themes/colors.dart';
import '../themes/fonts.dart';

class BannerKreatorSmall extends StatelessWidget {
  const BannerKreatorSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 191.28,
      height: 103,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6D6E71).withOpacity(1),
              Color(0xff6A47C2).withOpacity(0.73)
            ]),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7.38, top: 7.28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.groups_2_sharp,
                          color: Colors.white,
                          size: 9,
                        ),
                        const SizedBox(
                          width: 4.54,
                        ),
                        Text(
                          "Video Call",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6,
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.87),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 90,
                          child: Text("Diskusi Antisipasi Resesi Global 2023",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 7,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.88,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7.36),
                    child: Row(
                      children: [
                        Text(
                          "Raymond Chin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 4,
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        VerifiedAcc(5),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Senin, 27 Februari 2023",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 4,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7.36),
                    child: Row(
                      children: [
                        Text("GRATIS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 90,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10))),
            child: Image.asset(
              "assets/images/kang_raymond_try.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class BannerKreator extends StatelessWidget {
  BannerKreator({
    Key? key,
    required this.kreatorName,
    required this.tanggal,
    required this.title,
    required this.harga,
    required this.isPrivate,
  });
  final String kreatorName;
  final String tanggal;
  final String title;
  final double harga;
  bool isPrivate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 205.69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: linearGradientCard,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.69, top: 14.69),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        isPrivate
                            ? const Icon(
                                Icons.group_sharp,
                                color: Colors.white,
                                size: 28,
                              )
                            : const Icon(
                                Icons.groups_2_sharp,
                                color: Colors.white,
                                size: 28,
                              ),
                        const SizedBox(
                          width: 9.07,
                        ),
                        isPrivate
                            ? Text(
                                "Private Call",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            : Text(
                                "Group Call",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 23.61,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.71),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 159,
                          child: Text(title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.67,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.88,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.71),
                    child: Row(
                      children: [
                        Text(
                          kreatorName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        VerifiedAcc(10),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          tanggal,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 7,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.69),
                    child: Row(
                      children: [
                        harga <= 0
                            ? Text("Gratis",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 31.34,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left)
                            : Text("Rp.${harga.toStringAsFixed(0)}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 31.34,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(),
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10))),
            child: Image.asset(
              "assets/images/kang_raymond_try.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class BannerKreator2 extends StatelessWidget {
  BannerKreator2({
    Key? key,
    required this.kreatorName,
    required this.tanggal,
    required this.title,
    required this.harga,
    required this.isPrivate,
  });
  final String kreatorName;
  final String tanggal;
  final String title;
  final double harga;
  bool isPrivate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 205.69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10)),
        gradient: linearGradientCard,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.69, top: 14.69),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        isPrivate
                            ? const Icon(
                                Icons.group_sharp,
                                color: Colors.white,
                                size: 28,
                              )
                            : const Icon(
                                Icons.groups_2_sharp,
                                color: Colors.white,
                                size: 28,
                              ),
                        const SizedBox(
                          width: 9.07,
                        ),
                        isPrivate
                            ? Text(
                                "Private Call",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            : Text(
                                "Group Call",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 23.61,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.71),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 159,
                          child: Text(title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.67,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.88,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.71),
                    child: Row(
                      children: [
                        Text(
                          kreatorName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        VerifiedAcc(10),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          tanggal,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 7,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.26,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.69),
                    child: Row(
                      children: [
                        harga <= 0
                            ? Text("Gratis",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 31.34,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left)
                            : Text("Rp.${harga.toStringAsFixed(0)}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 31.34,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 15),
            height: 230,
            width: 209,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
              child: Image.asset(
                "assets/images/kang_raymond_try.png",
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({required this.header});
  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Iconify(
            Ic.round_arrow_back,
            size: 25,
            color: white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          header,
          style: headlineRekomendasi,
        )
      ],
    );
  }
}

class AppBarCustom1 extends StatelessWidget {
  const AppBarCustom1({required this.header});
  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Iconify(
            Ic.round_arrow_back,
            size: 25,
            color: white,
          ),
        ),
        Text(
          header,
          style: headlineRekomendasi,
        )
      ],
    );
  }
}

class HeaderPembayaran extends StatelessWidget {
  HeaderPembayaran(this.waktu);

  String waktu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color(0xff6D6E71).withOpacity(0.8), width: 1))),
      child: Row(
        children: [
          Iconify(MaterialSymbols.timer_outline_rounded,
              color: white, size: 18),
          SizedBox(width: 6),
          Text("Selesaikan pembayaran sebelum", style: nunito12W600),
          Spacer(),
          SizedBox(
              width: 99,
              height: 22,
              child: Text(
                waktu,
                style: nunito8W600,
                textAlign: TextAlign.right,
              ))
        ],
      ),
    );
  }
}

class TombalPembayaran extends StatelessWidget {
  const TombalPembayaran(this.name, this.image);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: 382,
        height: 55,
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
              gradient: linearGradientCard,
              borderRadius: BorderRadius.circular(8)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  shadowColor: Colors.black),
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                      width: 62,
                      height: 46,
                      child:
                          Image.asset("assets/images/pembayaran/${image}.png")),
                  SizedBox(width: 17),
                  Text(name, style: isiNotif700),
                ],
              )),
        ),
      ),
    );
  }
}

class InfoKoin extends StatelessWidget {
  const InfoKoin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          gradient: linearGradientCard4,
        ),
        child: Container(
          height: 94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            gradient: linearGradientCard2,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 21, top: 16, right: 17, bottom: 17),
                child: Container(
                  width: 120,
                  height: 61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: linearGradientCard3,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9, top: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Iconify(Ri.copper_coin_line,
                              color: Color(0xffffaacf)),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Koin Kamu",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: white,
                                fontSize: 12),
                          )
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 11,
                          ),
                          child: Text("97.500",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w700,
                                  color: white,
                                  fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: linearGradientCard3,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Get.to(TopUp());
                        },
                        icon: Iconify(Ic.round_plus, color: white),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: linearGradientCard3,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Iconify(
                          Ic.sharp_history,
                          color: white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: linearGradientCard3,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Get.to(TantanganPage());
                        },
                        icon: Iconify(
                          FluentEmojiHighContrast.wrapped_gift,
                          color: white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarCustom3 extends StatelessWidget {
  const AppBarCustom3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SizedBox(
            height: 42,
            width: 335,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintStyle: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: grey,
                ),
                hintText: "Kolom Pencarian",
                suffixIcon: Iconify(Ic.baseline_search, color: grey),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 20,
                  maxWidth: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(NotificationPage(true));
          },
          icon: Icon(
            Icons.notifications_none_outlined,
            color: white,
          ),
          iconSize: 27,
        )
      ],
    );
  }
}

class DetailAcaraDash extends StatelessWidget {
  DetailAcaraDash(this.icon, this.text);
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Iconify(icon, color: colorIcon3, size: 10),
        const SizedBox(width: 4.75),
        Text(text, style: nunito8W600),
      ],
    );
  }
}

class IndikatorLive extends StatelessWidget {
  IndikatorLive({required this.isLive});

  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return isLive
        ? Container(
            padding: EdgeInsets.only(left: 18, bottom: 2),
            width: 101,
            height: 18,
            decoration: BoxDecoration(
                color: magenta, borderRadius: BorderRadius.circular(3)),
            child: Text(
              "LIVE NOW",
              style: monts12W700,
            ),
          )
        : Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 9, right: 9, top: 1, bottom: 2),
            width: 101,
            height: 18,
            decoration: BoxDecoration(
                color: blueMuda, borderRadius: BorderRadius.circular(3)),
            child: Text(
              "UP COMING",
              style: monts12W700,
            ),
          );
  }
}
