import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:intigo_tuento/themes/useable.dart';
import 'package:intigo_tuento/view/login_page.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

import '../themes/colors.dart';
import '../themes/fonts.dart';
import '../widget/small_detail.dart';

class Beranda extends StatelessWidget {
  Beranda({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: gradientPrimary,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 59),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const BarPencarian(),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Iconify(
                    //     Ci.notification_outline,
                    //     color: Colors.white,
                    //     size: 30,
                    //   ),
                    // ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: 43,
                    ),
                    // ! For category
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: KategoriScroll(),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //!Rekomendasi
                    RekomendasiTxt("Rekomendasi"),
                    //!Banner
                    // Container(
                    //     padding: const EdgeInsets.only(left: 36, right: 39, top: 1),
                    //     child: autoPlayImage),
                    SizedBox(
                      height: 11,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: GestureDetector(
                          onTap: () {
                            Get.to(LoginPage());
                          },
                          child: BannerKreator(
                            kreatorName: "Raymond Chin",
                            harga: -1,
                            tanggal: "Senin, 27 Februari 2023",
                            isPrivate: false,
                            title: "Diskusi Antisipasi Resesi Global 2023",
                          )),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BannerKreatorSmall(),
                            const SizedBox(
                              width: 8,
                            ),
                            BannerKreatorSmall(),
                            SizedBox(
                              width: 8,
                            ),
                            BannerKreatorSmall(),
                            const SizedBox(
                              width: 8,
                            ),
                            BannerKreatorSmall(),
                            SizedBox(
                              width: 8,
                            ),
                            const BannerKreatorSmall(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    RekomendasiTxt("Kreator"),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            KategoriKreator2("Untuk Kamu"),
                            useablePaddingR,
                            KategoriKreator2("Gamer"),
                            useablePaddingR,
                            KategoriKreator2("Beauty Creator"),
                            useablePaddingR,
                            KategoriKreator2("Influencer"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24.0, right: 24, bottom: 51),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 20, top: 22),
                        width: 383,
                        height: 477,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: linearGradientCard,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(children: [
                            IdentitasKreator3("Raymond Chin", "Content Creator",
                                true, "kang_raymond1.png", 4.5),
                            IdentitasKreator3("Raymond Chin", "Content Creator",
                                true, "kang_raymond1.png", 4.5),
                            IdentitasKreator3("Raymond Chin", "Content Creator",
                                true, "kang_raymond1.png", 5.0),
                            IdentitasKreator3("Raymond Chin", "Content Creator",
                                true, "kang_raymond1.png", 4.5),
                            IdentitasKreator3("Raymond Chin", "Content Creator",
                                true, "kang_raymond1.png", 3.0),
                            IdentitasKreator3("Raymond Chin", "Content Creator",
                                true, "kang_raymond1.png", 4.1),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IdentitasKreator3 extends StatelessWidget {
  IdentitasKreator3(
      this.nama, this.kategori, this.verified, this.image, this.rating);
  final String nama;
  final String kategori;
  final bool verified;
  final String image;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.69, top: 18),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: Image.asset("assets/images/$image").image,
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      nama,
                      style: namaKreator,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    verified ? VerifiedAcc(20.23) : Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                kategori,
                style: kategoriKreator2,
              ),
              SizedBox(
                height: 3.87,
              ),
              RatingKreator(rating: rating, size: 11.62)
            ],
          ),
        ],
      ),
    );
  }
}

class KategoriKreator2 extends StatefulWidget {
  KategoriKreator2(this.text);

  final String text;
  @override
  State<KategoriKreator2> createState() => _KategoriKreator2State();
}

class _KategoriKreator2State extends State<KategoriKreator2> {
  bool isPressed = false;
  Color _sideColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onFocusChange: (isPressed) {
          setState(() {
            isPressed = !isPressed;
            _sideColor = isPressed ? magenta : white;
            print(isPressed);
          });
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          side: BorderSide(color: _sideColor, width: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        onPressed: () {
          // setState(() {
          //   isPressed = !isPressed;
          //   _sideColor = isPressed ? magenta : white;
          //   print(isPressed);
          // });
        },
        child: Container(
          constraints: BoxConstraints(
            minWidth: 10, // minimum width
            maxWidth: double.infinity, // maximum width
          ),
          child: Text(
            widget.text,
            style: GoogleFonts.nunito(
                fontSize: 16, fontWeight: FontWeight.w700, color: _sideColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class BarPencarian extends StatelessWidget {
  const BarPencarian({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 372,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 14, bottom: 14),
                child: Text(
                  "Kolom Pencarian",
                  style: pencarian,
                ),
              ),
              const Spacer(),
              const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.search_sharp, color: Color(0xff878787))),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}

class RekomendasiTxt extends StatelessWidget {
  RekomendasiTxt(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: headlineRekomendasi,
          ),
        ],
      ),
    );
  }
}

class KategoriScroll extends StatelessWidget {
  const KategoriScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 88.15,
                height: 79.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF865DFF),
                ),
              ),
              // Container(
              //   width: 88.15,
              //   height: 79.51,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     gradient: LinearGradient(
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //       colors: [
              //         Color(0xffffffff).withOpacity(0.5),
              //         Color(0xFF000000).withOpacity(0.05),
              //         Color(0xFF000000).withOpacity(0.05),
              //       ],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 7.14),
                      child: Image.asset("assets/images/hiburan_logo.png"),
                    ),
                    Text(
                      "Hiburan",
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: GoogleFonts.nunito().fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Stack(
            children: [
              Container(
                width: 88.15,
                height: 79.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF72C68),
                ),
              ),
              Container(
                width: 88.15,
                height: 79.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [
                  //     Color(0xffffffff).withOpacity(0.5),
                  //     Color(0xFF000000).withOpacity(0.05),
                  //     Color(0xFF000000).withOpacity(0.05),
                  //   ],
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19, bottom: 9),
                      child: Image.asset("assets/images/edukasi_logo.png"),
                    ),
                    Text(
                      "Edukasi",
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: GoogleFonts.nunito().fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Stack(
            children: [
              Container(
                width: 88.15,
                height: 79.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE75FC2),
                ),
              ),
              Container(
                width: 88.15,
                height: 79.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [
                  //     Color(0xffffffff).withOpacity(0.5),
                  //     Color(0xFF000000).withOpacity(0.05),
                  //     Color(0xFF000000).withOpacity(0.05),
                  //   ],
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 7),
                      child: Image.asset("assets/images/bisnis_logo.png"),
                    ),
                    Text(
                      "Bisnis",
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: GoogleFonts.nunito().fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Stack(
            children: [
              Container(
                width: 88.15,
                height: 79.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF60BCF3),
                ),
              ),
              // Container(
              //   width: 88.15,
              //   height: 79.51,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     gradient: LinearGradient(
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //       colors: [
              //         Color(0xffffffff).withOpacity(0.5),
              //         Color(0xFF000000).withOpacity(0.05),
              //         Color(0xFF000000).withOpacity(0.05),
              //       ],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 5),
                      child: Image.asset("assets/images/kesehatan_logo.png"),
                    ),
                    Text(
                      "Kesehatan",
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: GoogleFonts.nunito().fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DummyData extends StatelessWidget {
  const DummyData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        height: 81.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ));
  }
}
