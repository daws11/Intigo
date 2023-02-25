import 'package:flutter/material.dart';

Color grey = const Color(0xFFA0A0A0);
Color magenta = const Color(0xFFE75FC2);
Color white = const Color(0xFFFFFFFF);
Color blueMuda = const Color(0xFF60BCF3);

LinearGradient gradientPrimary = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xff230052),
    Color(0xff6A47C2),
    // Color.fromRGBO(133, 83, 243, 1),
  ],
  stops: [
    -0.323,
    0.5785,
    // 1.0186,
  ],
  // transform: GradientRotation(170.63 * math.pi / 180),
);

LinearGradient gradientPrimary2 = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF8553F3),
    Color(0xff86A47C2),
    Color(0xff230052),
  ],
  stops: [
    -0.0323,
    0.5785,
    1.0186,
  ],
  transform: GradientRotation(
      170.63 * (3.141592653589793 / 180)), // convert degree to radian
);

LinearGradient linearGradientCard = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff6D6E71).withOpacity(1),
      Color(0xff6A47C2).withOpacity(0.73)
    ]);

LinearGradient linearGradientCard2 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xff6A47C2).withOpacity(0.73),
    Color(0xffDBC1FF).withOpacity(0.1),
    Color(0xffF72C68).withOpacity(0.2),
  ],
  stops: [1, 0.8912, 0.025],
  // transform: GradientRotation(206.13 * 3.14 / 180),
);

LinearGradient gabLinearGradientCard2 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [
      0.101,
      0.6111
    ],
    colors: [
      Color(0xffF72C68).withOpacity(0.5),
      Color(0xffffffff).withOpacity(0)
    ]);
LinearGradient linearGradientCard4 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [
      0.100,
      0.5321
    ],
    colors: [
      Color(0xffF72C68).withOpacity(0.2),
      Color(0xffffffff).withOpacity(0)
    ]);

LinearGradient linearGradientCard3 = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xffFFFFFF).withOpacity(0.2),
      Color(0xffFFFFFF).withOpacity(0.1),
    ]);

Color colorIcon3 = Color(0xffD9D9D9);

DecorationImage backgroundImage = const DecorationImage(
  image: AssetImage('assets/images/background/background_image.png'),
  fit: BoxFit.cover,
);
DecorationImage backgroundImagePrimary = const DecorationImage(
  image: AssetImage('assets/images/background/background_image_primary.png'),
  fit: BoxFit.cover,
);
