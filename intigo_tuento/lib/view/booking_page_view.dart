import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:intigo_tuento/model/meetings_model.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/view/bill/pembayaran_page.dart';
import 'package:intigo_tuento/widget/avatar_circle.dart';
import 'package:intigo_tuento/widget/small_detail.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

class BookingPageView extends StatelessWidget {
  const BookingPageView({super.key, required this.meeting});
  final Meeting meeting;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: backgroundImage,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 62),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: AppBarCustom(header: "Booking Video Call"),
            ),
            SizedBox(
              height: 36,
            ),
            BannerKreator2(
              kreatorName: meeting.creator.name,
              tanggal: meeting.date,
              title: meeting.title,
              harga: meeting.price.toDouble(),
              isPrivate: meeting.isPrivate,
            ),
            SizedBox(
              height: 24.31,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 32),
              child: SizedBox(
                  width: double.infinity,
                  height: 24,
                  child: Text(meeting.title, style: mont20W600)),
            ),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xff6D6E71).withOpacity(0.6), width: 1)),
                ),
                child: Row(
                  children: [
                    LingkaranAvatarUhuy3(
                      image: meeting.creator.profilePhoto,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 185.89,
                      height: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  meeting.creator.name,
                                  style: monts16W700,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              VerifiedAcc(20),
                            ],
                          ),
                          Row(
                            children: [
                              Text(meeting.creator.professions[0].name,
                                  style: monts12W700),
                              Spacer(),
                              RatingKreator(rating: 5.0, size: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, top: 1, bottom: 2),
                      child: IndikatorLive(isLive: true),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: SizedBox(
                width: 382,
                child: Text(
                  meeting.description,
                  style: nunito16W700,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InformasiJadwal(
              tanggal: meeting.date,
              waktu: "${meeting.startTime} - ${meeting.endTime}",
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 24),
              child: Row(
                children: [
                  Iconify(Ri.copper_coin_line, color: magenta, size: 30),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Rp.${meeting.price}",
                    style: monts24W700,
                  ),
                  Spacer(),
                  ButtonBook(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ButtonBook extends StatelessWidget {
  const ButtonBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 141,
      height: 38,
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                context: context,
                builder: (context) => Container(
                      decoration: BoxDecoration(
                          image: backgroundImagePrimary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      height: 400,
                      width: 430,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 6,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 43,
                              height: 7,
                              decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Image.asset("assets/images/image_confirm.png"),
                          Text(
                            "Udah yakin nih? coba cek lagi!",
                            style: mont20W600,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 332,
                            child: Text(
                              "Siapin dirimu buat nanti ngobrol bareng kreator favoritmu!",
                              style: nunito16W500,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 27,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, right: 50),
                            child: Row(
                              children: [
                                ButtonBottomSheet(
                                    text: "Bentar, cek lagi...",
                                    onPressed: () {
                                      Get.back();
                                    }),
                                Spacer(),
                                ButtonBottomSheet(
                                    text: "Yakin banget...",
                                    onPressed: () {
                                      Get.to(PembayaranBill());
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: magenta,
            padding: EdgeInsets.only(left: 24, right: 24, top: 6, bottom: 7),
          ),
          child: Text(
            "Booking",
            style: monts20W700,
          )),
    );
  }
}

class ButtonBottomSheet extends StatelessWidget {
  const ButtonBottomSheet({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 26,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xff000000).withOpacity(0.25),
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 4),
        ),
      ], gradient: linearGradientCard, borderRadius: BorderRadius.circular(3)),
      child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStatePropertyAll(
                EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 5)),
          ),
          onPressed: () {
            onPressed();
          },
          child: Text(
            text,
            style: monts12W700,
          )),
    );
  }
}

class InformasiJadwal extends StatelessWidget {
  const InformasiJadwal({
    super.key,
    required this.tanggal,
    required this.waktu,
  });

  final String tanggal;
  final String waktu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Iconify(
                  Ic.round_calendar_month,
                  size: 23,
                  color: Color(0xffD9D9D9),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  tanggal,
                  style: nunito12W600,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Iconify(
                  Ic.round_access_time_filled,
                  size: 23,
                  color: Color(0xffD9D9D9),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  waktu,
                  style: nunito12W600,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
