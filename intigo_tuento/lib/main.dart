import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intigo_tuento/view/beranda.dart';
import 'package:intigo_tuento/view/bill/pembayaran_page.dart';
import 'package:intigo_tuento/view/bill/top_up_bill.dart';
import 'package:intigo_tuento/view/booking_page_view.dart';
import 'package:intigo_tuento/view/dashboard.dart';
import 'package:intigo_tuento/view/jadwal_kamu.dart';
import 'package:intigo_tuento/view/login_page.dart';
import 'package:intigo_tuento/view/profil_page.dart';
import 'package:intigo_tuento/view/profile_kreator_page_view.dart';
import 'package:intigo_tuento/view/register_page.dart';
import 'package:intigo_tuento/view/select_peran.dart';
import 'package:intigo_tuento/view/top_up_koin.dart';
import 'package:intigo_tuento/view/try_navbar.dart';
import 'package:intigo_tuento/view/tunggu_pembayaran.dart';
import 'package:intigo_tuento/widget/kalkulator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Beranda(),
    );
  }
}
