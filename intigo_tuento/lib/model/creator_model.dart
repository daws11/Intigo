// To parse this JSON data, do
//
//     final creatorResponse = creatorResponseFromJson(jsonString);

import 'dart:convert';

CreatorResponse creatorResponseFromJson(String str) =>
    CreatorResponse.fromJson(json.decode(str));

String creatorResponseToJson(CreatorResponse data) =>
    json.encode(data.toJson());

class CreatorResponse {
  CreatorResponse({
    required this.metadata,
    required this.creators,
  });

  Metadata metadata;
  List<Creator> creators;

  factory CreatorResponse.fromJson(Map<String, dynamic> json) =>
      CreatorResponse(
        metadata: Metadata.fromJson(json["metadata"]),
        creators: List<Creator>.from(
            json["creators"].map((x) => Creator.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "metadata": metadata.toJson(),
        "creators": List<dynamic>.from(creators.map((x) => x.toJson())),
      };
}

class Creator {
  Creator({
    required this.id,
    required this.name,
    required this.username,
    required this.profilePhoto,
    required this.isVerified,
    required this.professions,
  });

  String id;
  String name;
  String username;
  String profilePhoto;
  bool isVerified;
  List<Profession> professions;

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        profilePhoto: json["profilePhoto"],
        isVerified: json["isVerified"],
        professions: List<Profession>.from(
            json["professions"].map((x) => Profession.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "profilePhoto": profilePhoto,
        "isVerified": isVerified,
        "professions": List<dynamic>.from(professions.map((x) => x.toJson())),
      };
}

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
