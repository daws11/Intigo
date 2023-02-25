import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

class TantanganPage extends StatefulWidget {
  const TantanganPage({super.key});

  @override
  State<TantanganPage> createState() => _TantanganPageState();
}

class _TantanganPageState extends State<TantanganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: backgroundImagePrimary,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 48),
              child: AppBarCustom(header: "Tantangan"),
            ),
            SizedBox(
              height: 43,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 287,
                width: 382,
                decoration: BoxDecoration(
                    gradient: linearGradientCard4,
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 287,
                  width: 382,
                  decoration: BoxDecoration(
                      gradient: linearGradientCard2,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView(
                    children: [
                      TaskUser(),
                      TaskUser(),
                      TaskUser(),
                      TaskUser(),
                      TaskUser(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 57,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Pencapaian",
                style: pencapaian,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 287,
                width: 382,
                decoration: BoxDecoration(
                    gradient: linearGradientCard4,
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 287,
                  width: 382,
                  decoration: BoxDecoration(
                      gradient: linearGradientCard2,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView(
                    children: [
                      TaskUser(),
                      TaskUser(),
                      TaskUser(),
                      TaskUser(),
                      TaskUser(),
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

class TaskUser extends StatelessWidget {
  const TaskUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, top: 18, right: 19),
      child: Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 231,
                  height: 38,
                  child: Text(
                      "Mengikuti Group Call atau Private Call selama minimal 60 menit.",
                      style: taskFont),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 220,
                  child: Row(
                    children: [
                      Iconify(Ri.copper_coin_line, size: 18, color: magenta),
                      Text(" 3K", style: coinFont),
                      Spacer(),
                      Text("65/60", style: coinFont),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(width: 7),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: magenta,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: Text(
                  "Ambil",
                  style: ambilTask,
                ))
          ],
        ),
      ),
    );
  }
}
