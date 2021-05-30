// To parse this JSON data, do
//
//     final midiasFontesEntity = midiasFontesEntityFromJson(jsonString);

import 'dart:convert';

List<MidiasFontesEntity> midiasFontesEntityFromJson(String str) =>
    List<MidiasFontesEntity>.from(
        json.decode(str).map((x) => MidiasFontesEntity.fromJson(x)));

String midiasFontesEntityToJson(List<MidiasFontesEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MidiasFontesEntity {
  MidiasFontesEntity({
    this.idResumo,
    this.pubdate,
    this.guid,
    this.resultCode,
    this.resultDescription,
  });

  String idResumo;
  String pubdate;
  String guid;
  int resultCode;
  String resultDescription;

  factory MidiasFontesEntity.fromJson(Map<String, dynamic> json) =>
      MidiasFontesEntity(
        idResumo: json["id_resumo"] == null ? null : json["id_resumo"],
        pubdate: json["pubdate"] == null ? null : json["pubdate"],
        guid: json["guid"] == null ? null : json["guid"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "id_resumo": idResumo == null ? null : idResumo,
        "pubdate": pubdate == null ? null : pubdate,
        "guid": guid == null ? null : guid,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
