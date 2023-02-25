import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';

import '../widget/widget_dar_creator.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage(this.isNotifNull);

  final bool isNotifNull;

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: backgroundImage,
        ),
        child: widget.isNotifNull
            ? Center(
                child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 62, left: 24),
                    child: AppBarCustom(header: "Pemberitahuan"),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Image.asset("assets/images/notif_kosong.png"),
                  Text(
                    "Belum ada pemberitahuan yang masuk !",
                    style: isiNotif700,
                  ),
                ],
              ))
            : ListView(
                children: [
                  AppBarCustom(header: "Pemberitahuan"),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 22, top: 49),
                    child: Container(
                      height: 654,
                      child: ListView(
                        children: [
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                          TextNotif(
                              "Anda telah berhasil melakukan pembayaran sebesar Rp200.000 untuk public call bersama Nadin Amizah."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class TextNotif extends StatelessWidget {
  const TextNotif(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 43),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: white, width: 1),
        )),
        child: Text(
          text,
          style: isiNotif,
        ),
      ),
    );
  }
}
