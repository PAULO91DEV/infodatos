// To parse this JSON data, do
//
//     final cnaesCnpjEntity = cnaesCnpjEntityFromJson(jsonString);

import 'dart:convert';

List<CnaesCnpjEntity> cnaesCnpjEntityFromJson(String str) =>
    List<CnaesCnpjEntity>.from(
        json.decode(str).map((x) => CnaesCnpjEntity.fromJson(x)));

String cnaesCnpjEntityToJson(List<CnaesCnpjEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CnaesCnpjEntity {
  CnaesCnpjEntity({
    this.cnpj,
    this.cnae,
    this.descrCnae,
    this.resultCode,
    this.resultDescription,
  });

  String cnpj;
  String cnae;
  String descrCnae;
  int resultCode;
  String resultDescription;

  factory CnaesCnpjEntity.fromJson(Map<String, dynamic> json) =>
      CnaesCnpjEntity(
        cnpj: json["cnpj"] == null ? null : json["cnpj"],
        cnae: json["cnae"] == null ? null : json["cnae"],
        descrCnae: json["descr_cnae"] == null ? null : json["descr_cnae"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpj,
        "cnae": cnae == null ? null : cnae,
        "descr_cnae": descrCnae == null ? null : descrCnae,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
