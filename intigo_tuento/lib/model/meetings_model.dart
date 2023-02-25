// To parse this JSON data, do
//
//     final meetingResponse = meetingResponseFromJson(jsonString);

import 'dart:convert';
import 'package:intl/intl.dart';

import 'creator_model.dart';

MeetingResponse meetingResponseFromJson(String str) =>
    MeetingResponse.fromJson(json.decode(str));

String meetingResponseToJson(MeetingResponse data) =>
    json.encode(data.toJson());

class MeetingResponse {
  MeetingResponse({
    required this.metadata,
    required this.meetings,
  });

  Metadata metadata;
  List<Meeting> meetings;

  factory MeetingResponse.fromJson(Map<String, dynamic> json) =>
      MeetingResponse(
        metadata: Metadata.fromJson(json["metadata"]),
        meetings: List<Meeting>.from(
            json["meetings"].map((x) => Meeting.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "metadata": metadata.toJson(),
        "meetings": List<dynamic>.from(meetings.map((x) => x.toJson())),
      };
}

class Meeting {
  Meeting({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.slots,
    required this.startAt,
    required this.endAt,
    required this.isPrivate,
    required this.creatorId,
    required this.creator,
  });

  String id;
  String title;
  String description;
  int price;
  int slots;
  DateTime startAt;
  DateTime endAt;
  bool isPrivate;
  String creatorId;
  Creator creator;

  final DateFormat dateFormat = DateFormat("EEEE, dd MMMM yyyy");
  final DateFormat timeFormat = DateFormat("kk:mm");

  String get startTime => timeFormat.format(startAt);
  String get endTime => timeFormat.format(endAt);
  String get date => dateFormat.format(startAt);

  final NumberFormat numberFormat = NumberFormat.decimalPattern("en_us");

  String get stringPrice => numberFormat.format(price);

  factory Meeting.fromJson(Map<String, dynamic> json) => Meeting(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        slots: json["slots"],
        startAt: DateTime.parse(json["startAt"]),
        endAt: DateTime.parse(json["endAt"]),
        isPrivate: json["isPrivate"],
        creatorId: json["creatorId"],
        creator: Creator.fromJson(json["creator"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "slots": slots,
        "startAt": startAt.toIso8601String(),
        "endAt": endAt.toIso8601String(),
        "isPrivate": isPrivate,
        "creatorId": creatorId,
        "creator": creator.toJson(),
      };
}

// class Creator {
//   Creator({
//     required this.id,
//     required this.name,
//     required this.username,
//     required this.profilePhoto,
//     required this.isVerified,
//     required this.professions,
//   });

//   String id;
//   String name;
//   String username;
//   String profilePhoto;
//   bool isVerified;
//   List<Profession> professions;

//   factory Creator.fromJson(Map<String, dynamic> json) => Creator(
//         id: json["id"],
//         name: json["name"],
//         username: json["username"],
//         profilePhoto: json["profilePhoto"],
//         isVerified: json["isVerified"],
//         professions: List<Profession>.from(
//             json["professions"].map((x) => Profession.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "username": username,
//         "profilePhoto": profilePhoto,
//         "isVerified": isVerified,
//         "professions": List<dynamic>.from(professions.map((x) => x.toJson())),
//       };
// }

class Profession {
  Profession({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Profession.fromJson(Map<String, dynamic> json) => Profession(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Metadata {
  Metadata({
    required this.page,
    required this.size,
    required this.total,
    required this.totalPage,
  });

  int page;
  int size;
  int total;
  int totalPage;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        page: json["page"],
        size: json["size"],
        total: json["total"],
        totalPage: json["totalPage"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "size": size,
        "total": total,
        "totalPage": totalPage,
      };
}
