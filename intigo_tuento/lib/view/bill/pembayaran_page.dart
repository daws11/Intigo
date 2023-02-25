import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

import '../../themes/fonts.dart';

class PembayaranBill extends StatelessWidget {
  const PembayaranBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: backgroundImagePrimary,
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 59),
            child: AppBarCustom1(header: "Pembayaran"),
          ),
          SizedBox(height: 19),
          Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: HeaderPembayaran("Senin, 27 Februari 2023 19.00 PM")),
          Container(
            height: 607,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Pembayaran di Intigo", style: monts16W600),
                ),
                SizedBox(height: 7),
                Padding(
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
                              offset:
                                  Offset(0, 4), // changes position of shadow
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
                              Iconify(Ri.copper_coin_line,
                                  color: magenta, size: 24),
                              SizedBox(width: 8),
                              Text("97.500", style: isiNotif700),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Kartu Kredit", style: monts16W600),
                ),
                SizedBox(height: 7),
                Padding(
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
                              offset:
                                  Offset(0, 4), // changes position of shadow
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
                              Iconify(Bi.credit_card_2_front,
                                  color: white, size: 24),
                              SizedBox(width: 17),
                              Text("Kartu Kredit", style: isiNotif700),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Virtual Account", style: monts16W600),
                ),
                SizedBox(height: 7),
                SizedBox(height: 7),
                TombalPembayaran("Mandiri Virtual Account", "mandiri"),
                SizedBox(height: 7),
                TombalPembayaran("BCA Virtual Account", "bca"),
                SizedBox(height: 7),
                TombalPembayaran("BRI Virtual Account", "bri"),
                SizedBox(height: 7),
                TombalPembayaran("BSI Virtual Account", "bsi"),
                SizedBox(height: 7),
                TombalPembayaran("BNI Virtual Account", "bni"),
                SizedBox(height: 7),
                TombalPembayaran("Jago Virtual Account", "jago"),
                SizedBox(height: 33),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Color(0xff6D6E71).withOpacity(0.8),
              thickness: 2,
            ),
          ),
          SizedBox(height: 18),
          Container(
            child: Row(
              children: [
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("Total Tagihan", style: monts16W600),
                    ),
                    SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text("Rp300.000", style: monts16W700),
                    ),
                  ],
                )),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: SizedBox(
                    width: 121,
                    height: 31,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: magenta,
                            elevation: 0,
                            shadowColor: Colors.black),
                        onPressed: () {},
                        child: Text("Bayar", style: monts16W700)),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
