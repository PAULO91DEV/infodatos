// To parse this JSON data, do
//
//     final midiaCrimesEntity = midiaCrimesEntityFromJson(jsonString);

import 'dart:convert';

List<MidiaCrimesEntity> midiaCrimesEntityFromJson(String str) =>
    List<MidiaCrimesEntity>.from(
        json.decode(str).map((x) => MidiaCrimesEntity.fromJson(x)));

String midiaCrimesEntityToJson(List<MidiaCrimesEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MidiaCrimesEntity {
  MidiaCrimesEntity({
    this.idResumo,
    this.titulacao,
    this.operacao,
    this.resultCode,
    this.resultDescription,
  });

  String idResumo;
  String titulacao;
  String operacao;
  int resultCode;
  String resultDescription;

  factory MidiaCrimesEntity.fromJson(Map<String, dynamic> json) =>
      MidiaCrimesEntity(
        idResumo: json["id_resumo"] == null ? null : json["id_resumo"],
        titulacao: json["titulacao"] == null ? null : json["titulacao"],
        operacao: json["operacao"] == null ? null : json["operacao"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "id_resumo": idResumo == null ? null : idResumo,
        "titulacao": titulacao == null ? null : titulacao,
        "operacao": operacao == null ? null : operacao,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
