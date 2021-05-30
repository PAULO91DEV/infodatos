// To parse this JSON data, do
//
//     final qsaCnpjjEntity = qsaCnpjjEntityFromJson(jsonString);

import 'dart:convert';

List<QsaCnpjjEntity> qsaCnpjjEntityFromJson(String str) =>
    List<QsaCnpjjEntity>.from(
        json.decode(str).map((x) => QsaCnpjjEntity.fromJson(x)));

String qsaCnpjjEntityToJson(List<QsaCnpjjEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QsaCnpjjEntity {
  QsaCnpjjEntity({
    this.cnpj,
    this.nomeEmpresa,
    this.descrIdentSocio,
    this.nomeSocio,
    this.descricaoQualifSocio,
    this.cpf,
    this.resultCode,
    this.resultDescription,
  });

  String cnpj;
  String nomeEmpresa;
  String descrIdentSocio;
  String nomeSocio;
  String descricaoQualifSocio;
  String cpf;
  int resultCode;
  String resultDescription;

  factory QsaCnpjjEntity.fromJson(Map<String, dynamic> json) => QsaCnpjjEntity(
        cnpj: json["cnpj"] == null ? null : json["cnpj"],
        nomeEmpresa: json["nome_empresa"] == null ? null : json["nome_empresa"],
        descrIdentSocio: json["descr_ident_socio"] == null
            ? null
            : json["descr_ident_socio"],
        nomeSocio: json["nome_socio"] == null ? null : json["nome_socio"],
        descricaoQualifSocio: json["descricao_qualif_socio"] == null
            ? null
            : json["descricao_qualif_socio"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpj,
        "nome_empresa": nomeEmpresa == null ? null : nomeEmpresa,
        "descr_ident_socio": descrIdentSocio == null ? null : descrIdentSocio,
        "nome_socio": nomeSocio == null ? null : nomeSocio,
        "descricao_qualif_socio":
            descricaoQualifSocio == null ? null : descricaoQualifSocio,
        "cpf": cpf == null ? null : cpf,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
