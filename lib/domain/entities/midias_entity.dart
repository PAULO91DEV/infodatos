// To parse this JSON data, do
//
//     final midiasEntity = midiasEntityFromJson(jsonString);

import 'dart:convert';

List<MidiasEntity> midiasEntityFromJson(String str) => List<MidiasEntity>.from(
    json.decode(str).map((x) => MidiasEntity.fromJson(x)));

String midiasEntityToJson(List<MidiasEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MidiasEntity {
  MidiasEntity({
    this.idResumo,
    this.nome,
    this.cpfCnpj,
    this.sexo,
    this.pseudonimos,
    this.dtNascimento,
    this.situacaoRf,
    this.resumo,
    this.resultCode,
    this.resultDescription,
  });

  String idResumo;
  String nome;
  String cpfCnpj;
  String sexo;
  String pseudonimos;
  String dtNascimento;
  String situacaoRf;
  String resumo;
  int resultCode;
  String resultDescription;

  factory MidiasEntity.fromJson(Map<String, dynamic> json) => MidiasEntity(
        idResumo: json["id_resumo"] == null ? null : json["id_resumo"],
        nome: json["nome"] == null ? null : json["nome"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        sexo: json["sexo"] == null ? null : json["sexo"],
        pseudonimos: json["pseudonimos"] == null ? null : json["pseudonimos"],
        dtNascimento:
            json["dt_nascimento"] == null ? null : json["dt_nascimento"],
        situacaoRf: json["situacao_rf"] == null ? null : json["situacao_rf"],
        resumo: json["resumo"] == null ? null : json["resumo"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "id_resumo": idResumo == null ? null : idResumo,
        "nome": nome == null ? null : nome,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "sexo": sexo == null ? null : sexo,
        "pseudonimos": pseudonimos == null ? null : pseudonimos,
        "dt_nascimento": dtNascimento == null ? null : dtNascimento,
        "situacao_rf": situacaoRf == null ? null : situacaoRf,
        "resumo": resumo == null ? null : resumo,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
