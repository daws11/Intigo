import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ps.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:intigo_tuento/themes/fonts.dart';
import 'package:intigo_tuento/widget/widget_dar_creator.dart';

import '../themes/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: backgroundImage,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 48),
            child: AppBarCustom(header: "Profil Kamu"),
          ),
          SizedBox(height: 32.5),
          IdentitasKreator3("Muhammad Iqbal Rasyid", "+6281286541979",
              "profile/profile_image_aud.png", "AUDIENS"),
          SizedBox(height: 32),
          InfoKoin(),
          SizedBox(height: 64),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text("Pengaturan Akun", style: monts16W700),
          ),
          SizedBox(height: 32),
          PengaturanAkun(MaterialSymbols.person_outline, "Ubah Profil", white),
          SizedBox(height: 16),
          PengaturanAkun(
              MaterialSymbols.lock_outline, "Ubah Kata Sandi", white),
          SizedBox(height: 16),
          PengaturanAkun(Ps.headset, "Bantuan", white),
          SizedBox(height: 16),
          PengaturanAkun(Ri.file_paper_2_line, "Syarat dan Ketentuan", white),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 53),
            child: Row(children: [
              Iconify(Mdi.exit_to_app, color: magenta, size: 22),
              SizedBox(width: 16),
              Text(
                "Keluar Akun",
                style: nunito18W600m,
              )
            ]),
          )
        ]),
      ),
    );
  }
}

class PengaturanAkun extends StatelessWidget {
  PengaturanAkun(this.icon, this.text, this.color);
  final String text;
  final String icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 53),
      child: Container(
        padding: EdgeInsets.only(bottom: 15.81),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: white.withOpacity(0.15),
              width: 3,
            ),
          ),
        ),
        child: Row(children: [
          Iconify(icon, color: color, size: 22),
          SizedBox(width: 16),
          Text(
            text,
            style: nunito18W600,
          )
        ]),
      ),
    );
  }
}

class IdentitasKreator3 extends StatelessWidget {
  IdentitasKreator3(this.nama, this.kategori, this.image, this.role);
  final String nama;
  final String kategori;
  final String image;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.5),
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
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                kategori,
                style: monts12W700,
              ),
              SizedBox(
                height: 3.87,
              ),
              Row(
                children: [
                  Text(role, style: nunito10W700),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
