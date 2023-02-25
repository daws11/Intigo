import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:intigo_tuento/themes/colors.dart';
import 'package:intigo_tuento/themes/fonts.dart';

class VerifiedAcc extends StatelessWidget {
  VerifiedAcc(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Icon(Icons.verified_outlined, color: Color(0xffffffff), size: size),
      Icon(Icons.verified_sharp, color: Color(0xffffaacf), size: size),
    ]);
  }
}

class RatingKreator extends StatelessWidget {
  const RatingKreator({
    super.key,
    required this.rating,
    required this.size,
  });

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Iconify(Ic.round_star, color: blueMuda, size: size),
        Text(rating.toString(), style: nunito8W700),
      ],
    );
  }
}
