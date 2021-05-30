// To parse this JSON data, do
//
//     final bfNameEntity = bfNameEntityFromJson(jsonString);

import 'dart:convert';

List<BfNameEntity> bfNameEntityFromJson(String str) => List<BfNameEntity>.from(
    json.decode(str).map((x) => BfNameEntity.fromJson(x)));

String bfNameEntityToJson(List<BfNameEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BfNameEntity {
  BfNameEntity({
    this.anoMesReferencia,
    this.anoMesCompetencia,
    this.uf,
    this.codMunicipioSiafi,
    this.municipio,
    this.nisBeneficiario,
    this.nomeBeneficiario,
    this.valorBeneficio,
    this.valorSaque,
    this.dataSaque,
    this.resultCode,
    this.resultDescription,
  });

  String anoMesReferencia;
  String anoMesCompetencia;
  String uf;
  String codMunicipioSiafi;
  String municipio;
  String nisBeneficiario;
  String nomeBeneficiario;
  String valorBeneficio;
  String valorSaque;
  String dataSaque;
  int resultCode;
  String resultDescription;

  factory BfNameEntity.fromJson(Map<String, dynamic> json) => BfNameEntity(
        anoMesReferencia: json["ano_mes_referencia"] == null
            ? null
            : json["ano_mes_referencia"],
        anoMesCompetencia: json["ano_mes_competencia"] == null
            ? null
            : json["ano_mes_competencia"],
        uf: json["uf"] == null ? null : json["uf"],
        codMunicipioSiafi: json["cod_municipio_siafi"] == null
            ? null
            : json["cod_municipio_siafi"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        nisBeneficiario:
            json["nis_beneficiario"] == null ? null : json["nis_beneficiario"],
        nomeBeneficiario: json["nome_beneficiario"] == null
            ? null
            : json["nome_beneficiario"],
        valorBeneficio:
            json["valor_beneficio"] == null ? null : json["valor_beneficio"],
        valorSaque: json["valor_saque"] == null ? null : json["valor_saque"],
        dataSaque: json["data_saque"] == null ? null : json["data_saque"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "ano_mes_referencia":
            anoMesReferencia == null ? null : anoMesReferencia,
        "ano_mes_competencia":
            anoMesCompetencia == null ? null : anoMesCompetencia,
        "uf": uf == null ? null : uf,
        "cod_municipio_siafi":
            codMunicipioSiafi == null ? null : codMunicipioSiafi,
        "municipio": municipio == null ? null : municipio,
        "nis_beneficiario": nisBeneficiario == null ? null : nisBeneficiario,
        "nome_beneficiario": nomeBeneficiario == null ? null : nomeBeneficiario,
        "valor_beneficio": valorBeneficio == null ? null : valorBeneficio,
        "valor_saque": valorSaque == null ? null : valorSaque,
        "data_saque": dataSaque == null ? null : dataSaque,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
