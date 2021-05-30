// To parse this JSON data, do
//
//     final cepimEntity = cepimEntityFromJson(jsonString);

import 'dart:convert';

List<CepimEntity> cepimEntityFromJson(String str) => List<CepimEntity>.from(
    json.decode(str).map((x) => CepimEntity.fromJson(x)));

String cepimEntityToJson(List<CepimEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CepimEntity {
  CepimEntity({
    this.fonte,
    this.nomeEntidade,
    this.cnpjEntidade,
    this.orgaoConcedente,
    this.motivoImpedimento,
    this.id,
    this.resultCode,
    this.resultDescription,
  });

  String fonte;
  String nomeEntidade;
  String cnpjEntidade;
  String orgaoConcedente;
  String motivoImpedimento;
  String id;
  int resultCode;
  String resultDescription;

  factory CepimEntity.fromJson(Map<String, dynamic> json) => CepimEntity(
        fonte: json["fonte"] == null ? null : json["fonte"],
        nomeEntidade:
            json["nome_entidade"] == null ? null : json["nome_entidade"],
        cnpjEntidade:
            json["cnpj_entidade"] == null ? null : json["cnpj_entidade"],
        orgaoConcedente:
            json["orgao_concedente"] == null ? null : json["orgao_concedente"],
        motivoImpedimento: json["motivo_impedimento"] == null
            ? null
            : json["motivo_impedimento"],
        id: json["id"] == null ? null : json["id"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "fonte": fonte == null ? null : fonte,
        "nome_entidade": nomeEntidade == null ? null : nomeEntidade,
        "cnpj_entidade": cnpjEntidade == null ? null : cnpjEntidade,
        "orgao_concedente": orgaoConcedente == null ? null : orgaoConcedente,
        "motivo_impedimento":
            motivoImpedimento == null ? null : motivoImpedimento,
        "id": id == null ? null : id,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
