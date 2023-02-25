import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

class WaitPayment extends StatelessWidget {
  const WaitPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: backgroundImagePrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 59),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    Iconify(Ic.round_arrow_back, size: 26, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Menunggu Pembayaran", style: monts20W700),
                  ],
                ),
              ),
              SizedBox(
                height: 74,
              ),
              Image.asset("assets/images/waiting_payment_null.png"),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 63, right: 63),
                child: Container(
                  child: Text(
                    "Belum ada transaksi",
                    style: monts20W700,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 63, right: 63),
                child: Text(
                  "Yuk, segera booking jadwal dengan kreator favorit kamu dan berinteraksi langsung dengan mereka !",
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
