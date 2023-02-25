// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:iconify_flutter/iconify_flutter.dart';
// import 'package:iconify_flutter/icons/ic.dart';
// import 'package:iconify_flutter/icons/material_symbols.dart';
// import 'package:intigo_tuento/themes/colors.dart';
// import 'package:intigo_tuento/themes/fonts.dart';
// import 'package:intigo_tuento/widget/avatar_circle.dart';
// import 'package:intigo_tuento/widget/small_detail.dart';
// import 'package:intigo_tuento/widget/widget_dar_creator.dart';

// class JadwalAudiens extends StatelessWidget {
//   const JadwalAudiens({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: backgroundImagePrimary,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 59),
//           child: Column(
//             children: [
//               AppBarCustom3(),
//               SizedBox(
//                 height: 43,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                       width: 215,
//                       height: 32,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border:
//                               Border(bottom: BorderSide(color: Colors.white)),
//                         ),
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               elevation: 0,
//                             ),
//                             onPressed: () {},
//                             child: Text("Jadwal Aktif", style: monts16W700)),
//                       )),
//                   SizedBox(
//                       width: 196,
//                       height: 32,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border:
//                               Border(bottom: BorderSide(color: Colors.grey)),
//                         ),
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               elevation: 0,
//                             ),
//                             onPressed: () {},
//                             child: Text("RIWAYAT", style: monts16W700)),
//                       )),
//                 ],
//               ),
//               SizedBox(
//                 height: 589,
//                 child: Expanded(
//                   child: ListView(shrinkWrap: true, children: [
//                     CreatorCardJAdwal(),
//                     CreatorCardJAdwal(),
//                     CreatorCardJAdwal(),
//                     CreatorCardJAdwal(),
//                     CreatorCardJAdwal(),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 height: 17.62,
//               ),
//               Container(
//                 height: 50,
//                 width: 384,
//                 decoration: BoxDecoration(
//                     gradient: linearGradientCard,
//                     borderRadius: BorderRadius.circular(13),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Color(0x29000000),
//                           offset: Offset(3, 4),
//                           blurRadius: 4,
//                           spreadRadius: 0)
//                     ]),
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.transparent,
//                       elevation: 0,
//                     ),
//                     onPressed: () {},
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 37,
//                           width: 45,
//                           child: Image.asset(
//                               "assets/images/icon/icon_waiting_payment.png"),
//                         ),
//                         Spacer(),
//                         Text(
//                           "WAITING FOR PAYMENT",
//                           style: monts12W700,
//                         ),
//                         SizedBox(
//                           width: 2,
//                         ),
//                         Iconify(Ic.round_arrow_forward_ios,
//                             size: 24, color: Colors.white),
//                       ],
//                     )),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CreatorCardJAdwal extends StatelessWidget {
//   const CreatorCardJAdwal({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
//       child: Container(
//           padding:
//               EdgeInsets.only(left: 20, right: 19, top: 11.21, bottom: 11.65),
//           height: 131,
//           width: 382,
//           decoration: BoxDecoration(
//               gradient: linearGradientCard,
//               borderRadius: BorderRadius.circular(13)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Container(child: LingkaranAvatarUhuy2(image: meeting.crea)),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text("Raymond Chin", style: monts16W700),
//                           SizedBox(
//                             width: 3,
//                           ),
//                           VerifiedAcc(12)
//                         ],
//                       ),
//                       Text(
//                         "Konten Kreator",
//                         style: nunito16W700,
//                       )
//                     ],
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       Iconify(MaterialSymbols.group_rounded,
//                           color: Colors.white, size: 17),
//                       SizedBox(
//                         width: 4,
//                       ),
//                       Text("Private Call", style: monts12W700)
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 12,
//               ),
//               Text(
//                 "Lorem ipsum dolor sit amet, consectetur",
//                 style: monts12W600,
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       DetailAcaraDash(
//                           Ic.round_calendar_month, "Senin, 27 Februari 2023"),
//                       SizedBox(
//                         height: 1,
//                       ),
//                       DetailAcaraDash(
//                           Ic.round_access_time_filled, "10:00 - 11:00"),
//                     ],
//                   ),
//                   Spacer(),
//                   IndikatorLive(isLive: true)
//                 ],
//               )
//             ],
//           )),
//     );
//   }
// }
