import 'package:flutter/material.dart';
import 'package:intigo_tuento/controller/meetings_controller.dart';

import '../model/meetings_model.dart';

class LingkaranAvatarUhuy extends StatelessWidget {
  const LingkaranAvatarUhuy({
    super.key,
    required this.meeting,
  });
  final Meeting meeting;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: Container(
        child: ClipOval(
          child: Container(
            width: 90,
            height: 90,
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  meeting.creator.profilePhoto,
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffF72C68),
                    Color(0xff60BCF3),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class LingkaranAvatarUhuy3 extends StatelessWidget {
  const LingkaranAvatarUhuy3({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: Container(
        child: ClipOval(
          child: Container(
            width: 48,
            height: 48,
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  image,
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffF72C68),
                    Color(0xff60BCF3),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class LingkaranAvatarUhuy2 extends StatelessWidget {
  const LingkaranAvatarUhuy2({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: Container(
        child: ClipOval(
          child: Container(
            width: 40,
            height: 40,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  image,
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffA53988),
                    Color(0xffFFFFFF),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
