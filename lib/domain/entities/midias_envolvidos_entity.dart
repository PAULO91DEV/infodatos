// To parse this JSON data, do
//
//     final midiasEnvolvidosEntity = midiasEnvolvidosEntityFromJson(jsonString);

import 'dart:convert';

List<MidiasEnvolvidosEntity> midiasEnvolvidosEntityFromJson(String str) =>
    List<MidiasEnvolvidosEntity>.from(
        json.decode(str).map((x) => MidiasEnvolvidosEntity.fromJson(x)));

String midiasEnvolvidosEntityToJson(List<MidiasEnvolvidosEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MidiasEnvolvidosEntity {
  MidiasEnvolvidosEntity({
    this.idResumo,
    this.envolvidos,
    this.cpfCnpj,
    this.vinculoSocietario,
    this.resultCode,
    this.resultDescription,
  });

  String idResumo;
  String envolvidos;
  String cpfCnpj;
  String vinculoSocietario;
  int resultCode;
  String resultDescription;

  factory MidiasEnvolvidosEntity.fromJson(Map<String, dynamic> json) =>
      MidiasEnvolvidosEntity(
        idResumo: json["id_resumo"] == null ? null : json["id_resumo"],
        envolvidos: json["envolvidos"] == null ? null : json["envolvidos"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        vinculoSocietario: json["vinculo_societario"] == null
            ? null
            : json["vinculo_societario"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "id_resumo": idResumo == null ? null : idResumo,
        "envolvidos": envolvidos == null ? null : envolvidos,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "vinculo_societario":
            vinculoSocietario == null ? null : vinculoSocietario,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
