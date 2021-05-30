// To parse this JSON data, do
//
//     final getPepFullByDocumentResponseEntity = getPepFullByDocumentResponseEntityFromJson(jsonString);

import 'dart:convert';

GetPepFullByDocumentResponseEntity getPepFullByDocumentResponseEntityFromJson(
        String str) =>
    GetPepFullByDocumentResponseEntity.fromJson(json.decode(str));

String getPepFullByDocumentResponseEntityToJson(
        GetPepFullByDocumentResponseEntity data) =>
    json.encode(data.toJson());

class GetPepFullByDocumentResponseEntity {
  GetPepFullByDocumentResponseEntity({
    this.identityDocument,
    this.name,
    this.birthDate,
    this.mandates,
  });

  String identityDocument;
  String name;
  DateTime birthDate;
  List<GetPepFullByDocumentMandateEntity> mandates;

  factory GetPepFullByDocumentResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      GetPepFullByDocumentResponseEntity(
        identityDocument:
            json["identityDocument"] == null ? null : json["identityDocument"],
        name: json["name"] == null ? null : json["name"],
        birthDate: json["birthDate"] == null
            ? null
            : DateTime.parse(json["birthDate"]),
        mandates: json["mandates"] == null
            ? null
            : List<GetPepFullByDocumentMandateEntity>.from(json["mandates"]
                .map((x) => GetPepFullByDocumentMandateEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "identityDocument": identityDocument == null ? null : identityDocument,
        "name": name == null ? null : name,
        "birthDate": birthDate == null ? null : birthDate.toIso8601String(),
        "mandates": mandates == null
            ? null
            : List<dynamic>.from(mandates.map((x) => x.toJson())),
      };
}

class GetPepFullByDocumentMandateEntity {
  GetPepFullByDocumentMandateEntity({
    this.classification,
    this.mandate,
    this.address,
    this.governmentAgency,
    this.appointmentDate,
    this.exonerationDate,
    this.endDate,
  });

  String classification;
  String mandate;
  dynamic address;
  String governmentAgency;
  DateTime appointmentDate;
  DateTime exonerationDate;
  DateTime endDate;

  factory GetPepFullByDocumentMandateEntity.fromJson(
          Map<String, dynamic> json) =>
      GetPepFullByDocumentMandateEntity(
        classification:
            json["classification"] == null ? null : json["classification"],
        mandate: json["mandate"] == null ? null : json["mandate"],
        address: json["address"],
        governmentAgency:
            json["governmentAgency"] == null ? null : json["governmentAgency"],
        appointmentDate: json["appointmentDate"] == null
            ? null
            : DateTime.parse(json["appointmentDate"]),
        exonerationDate: json["exonerationDate"] == null
            ? null
            : DateTime.parse(json["exonerationDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
      );

  Map<String, dynamic> toJson() => {
        "classification": classification == null ? null : classification,
        "mandate": mandate == null ? null : mandate,
        "address": address,
        "governmentAgency": governmentAgency == null ? null : governmentAgency,
        "appointmentDate":
            appointmentDate == null ? null : appointmentDate.toIso8601String(),
        "exonerationDate":
            exonerationDate == null ? null : exonerationDate.toIso8601String(),
        "endDate": endDate == null ? null : endDate.toIso8601String(),
      };
}
