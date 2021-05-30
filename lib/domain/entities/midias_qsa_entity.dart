// To parse this JSON data, do
//
//     final midiasQsaEntity = midiasQsaEntityFromJson(jsonString);

import 'dart:convert';

List<MidiasQsaEntity> midiasQsaEntityFromJson(String str) =>
    List<MidiasQsaEntity>.from(
        json.decode(str).map((x) => MidiasQsaEntity.fromJson(x)));

String midiasQsaEntityToJson(List<MidiasQsaEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MidiasQsaEntity {
  MidiasQsaEntity({
    this.cnpj,
    this.nomeEmpresa,
    this.cpf,
    this.nomeSocio,
    this.resultCode,
    this.resultDescription,
  });

  String cnpj;
  String nomeEmpresa;
  String cpf;
  String nomeSocio;
  int resultCode;
  String resultDescription;

  factory MidiasQsaEntity.fromJson(Map<String, dynamic> json) =>
      MidiasQsaEntity(
        cnpj: json["cnpj"] == null ? null : json["cnpj"],
        nomeEmpresa: json["nome_empresa"] == null ? null : json["nome_empresa"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        nomeSocio: json["nome_socio"] == null ? null : json["nome_socio"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpj,
        "nome_empresa": nomeEmpresa == null ? null : nomeEmpresa,
        "cpf": cpf == null ? null : cpf,
        "nome_socio": nomeSocio == null ? null : nomeSocio,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
