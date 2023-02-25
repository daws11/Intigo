import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:intigo_tuento/controller/creator_controller.dart';
import 'package:intigo_tuento/controller/meetings_controller.dart';
import 'package:intigo_tuento/model/meetings_model.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/view/beranda.dart';
import 'package:intigo_tuento/view/booking_page_view.dart';
import 'package:intigo_tuento/view/notification_page.dart';
import 'package:intigo_tuento/view/tantangan_page.dart';
import 'package:intigo_tuento/view/top_up_koin.dart';
import 'package:intigo_tuento/widget/avatar_circle.dart';
import 'package:intigo_tuento/widget/small_detail.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});
  MeetingController meetingController = Get.put(MeetingController());
  CreatorController creatorController = Get.put(CreatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: backgroundImagePrimary,
          gradient: gradientPrimary,
        ),
        child: Column(children: [
          SizedBox(
            height: 74,
          ),
          AppBarCustom3(),
          Expanded(
            child: ListView(
              shrinkWrap: false,
              children: [
                InfoKoin(),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("VideoCall Berlangsung",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w900,
                          color: white,
                          fontSize: 16),
                      textAlign: TextAlign.start),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GetBuilder<MeetingController>(builder: (context) {
                      return Row(
                        children: context.meeting
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(right: 24),
                                  child: LingkaranAvatarUhuy(meeting: e),
                                ))
                            .toList(),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 19),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Rekomendasi", style: headlineRekomendasi2),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GetBuilder<MeetingController>(builder: (context) {
                      return Row(
                        children: context.meeting
                            .map((e) => CardWithGesture1(meeting: e))
                            .toList(),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Kreator Pupular",
                    style: headlineRekomendasi2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 22),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GetBuilder<CreatorController>(builder: (context) {
                      return Row(
                          children: context.creators
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: CardCreatorDashboardView2(
                                        e.name,
                                        e.professions[0].name,
                                        e.profilePhoto,
                                        e.isVerified,
                                        5.0),
                                  ))
                              .toList());
                    }),
                  ),
                ),
                const SizedBox(height: 24),
                // Image.asset(
                //   "assets/images/banner_app_intigo.png",
                // ),
                const SizedBox(height: 500),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class CardWithGesture1 extends StatelessWidget {
  const CardWithGesture1({
    super.key,
    required this.meeting,
  });
  final Meeting meeting;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(BookingPageView(
          meeting: meeting,
        ));
      },
      child: CardKreator3(
        nama: meeting.creator.name,
        title: meeting.creator.professions[0].name,
        judulAcara: meeting.title,
        tanggal: meeting.date,
        waktu: "${meeting.startTime} - ${meeting.endTime}",
        isPrivate: meeting.isPrivate,
        onPressed: () {
          Get.to(BookingPageView(
            meeting: meeting,
          ));
        },
        image: meeting.creator.profilePhoto,
      ),
    );
  }
}

class CardCreatorDashboardView2 extends StatelessWidget {
  CardCreatorDashboardView2(
      this.name, this.job, this.image, this.isVerified, this.rating);
  final String name;
  final String job;
  final String image;
  final bool isVerified;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 141,
        height: 158,
        child: Stack(
          children: [
            Container(
              width: 141,
              height: 158,
              child: Image.network(image, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, top: 3, right: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child:
                            Iconify(Ic.round_star, color: blueMuda, size: 15),
                      ),
                      SizedBox(width: 2),
                      Text(rating.toString(), style: nunito8W700)
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: isVerified ? VerifiedAcc(15) : Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 124),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff6A47C2).withOpacity(0.73),
                        Color(0xff88AED1).withOpacity(0)
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF88AED1).withOpacity(0.8),
                        Color(0xFF6A47C2).withOpacity(0),
                      ],
                      // stops: [0.111],
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: namaKreator5,
                      ),
                      Text(
                        job,
                        style: nunito8W600,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardKreator3 extends StatelessWidget {
  CardKreator3(
      {required this.nama,
      required this.title,
      required this.judulAcara,
      required this.tanggal,
      required this.waktu,
      required this.isPrivate,
      required this.onPressed,
      required this.image});
  final String nama;
  final String image;
  final String title;
  final String judulAcara;
  final String tanggal;
  final String waktu;
  final bool isPrivate;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient: gabLinearGradientCard2,
            ),
            child: Container(
              width: 199,
              height: 137,
              decoration: BoxDecoration(
                gradient: linearGradientCard,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 11, bottom: 6, right: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      LingkaranAvatarUhuy2(
                        image: image,
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  nama,
                                  style: namaKreator2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                VerifiedAcc(12)
                              ],
                            ),
                            Text(title, style: titleKreator)
                          ],
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      judulAcara,
                      maxLines: 1,
                      style: judulAcara2,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    DetailAcaraDash(Ic.round_calendar_month, tanggal),
                    SizedBox(
                      height: 3,
                    ),
                    DetailAcaraDash(Ic.round_access_time_filled, waktu),
                    SizedBox(
                      height: 3,
                    ),
                    PrivateNot(isPrivate),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
            width: 71,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 9, right: 7),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  gradient: linearGradientCard3,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {
                      onPressed();
                    },
                    child: Container(
                        child: Text(
                      "Lihat Detail",
                      style: GoogleFonts.montserrat(
                        fontSize: 8,
                        fontWeight: FontWeight.w800,
                      ),
                    ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PrivateNot extends StatelessWidget {
  PrivateNot(this.isPrivate);
  final bool isPrivate;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Iconify(isPrivate ? Ic.round_lock : Ic.round_groups,
          color: colorIcon3, size: 10),
      const SizedBox(width: 4.75),
      Text(isPrivate ? "Private Call" : "Group Call ", style: nunito8W600),
    ]);
  }
}
