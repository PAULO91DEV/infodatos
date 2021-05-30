// To parse this JSON data, do
//
//     final personNameEntity = personNameEntityFromJson(jsonString);

import 'dart:convert';

List<PersonNameEntity> personNameEntityFromJson(String str) =>
    List<PersonNameEntity>.from(
        json.decode(str).map((x) => PersonNameEntity.fromJson(x)));

String personNameEntityToJson(List<PersonNameEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PersonNameEntity {
  PersonNameEntity({
    this.identityDocument,
    this.name,
    this.birthDate,
    this.mothersName,
    this.foundInDatabases,
  });

  String identityDocument;
  String name;
  dynamic birthDate;
  dynamic mothersName;
  List<String> foundInDatabases;

  factory PersonNameEntity.fromJson(Map<String, dynamic> json) {
    return PersonNameEntity(
      identityDocument:
          json["identityDocument"] == null ? null : json["identityDocument"],
      name: json["name"] == null ? null : json["name"],
      birthDate: json["birthDate"],
      mothersName: json["mothersName"],
      foundInDatabases: json["foundInDatabases"] == null
          ? null
          : List<String>.from(json["foundInDatabases"].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "identityDocument": identityDocument == null ? null : identityDocument,
        "name": name == null ? null : name,
        "birthDate": birthDate,
        "mothersName": mothersName,
        "foundInDatabases": foundInDatabases == null
            ? null
            : List<dynamic>.from(foundInDatabases.map((x) => x)),
      };
}
