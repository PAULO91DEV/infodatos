// To parse this JSON data, do
//
//     final pepEntity = pepEntityFromJson(jsonString);

import 'dart:convert';

List<PepEntity> pepEntityFromJson(String str) =>
    List<PepEntity>.from(json.decode(str).map((x) => PepEntity.fromJson(x)));

String pepEntityToJson(List<PepEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PepEntity {
  PepEntity({
    this.classificacaoPep,
    this.cpfCnpj,
    this.nome,
    this.dtNascimento,
    this.sexo,
    this.endereco,
    this.cargo,
    this.orgao,
    this.dataNomeacao,
    this.dataExoneracao,
    this.dataFim,
    this.resultCode,
    this.resultDescription,
  });

  String classificacaoPep;
  String cpfCnpj;
  String nome;
  String dtNascimento;
  String sexo;
  String endereco;
  String cargo;
  String orgao;
  String dataNomeacao;
  String dataExoneracao;
  String dataFim;
  int resultCode;
  String resultDescription;

  factory PepEntity.fromJson(Map<String, dynamic> json) => PepEntity(
        classificacaoPep: json["classificacao_pep"] == null
            ? null
            : json["classificacao_pep"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        nome: json["nome"] == null ? null : json["nome"],
        dtNascimento:
            json["dt_nascimento"] == null ? null : json["dt_nascimento"],
        sexo: json["sexo"] == null ? null : json["sexo"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        cargo: json["cargo"] == null ? null : json["cargo"],
        orgao: json["orgao"] == null ? null : json["orgao"],
        dataNomeacao:
            json["data_nomeacao"] == null ? null : json["data_nomeacao"],
        dataExoneracao:
            json["data_exoneracao"] == null ? null : json["data_exoneracao"],
        dataFim: json["data_fim"] == null ? null : json["data_fim"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "classificacao_pep": classificacaoPep == null ? null : classificacaoPep,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "nome": nome == null ? null : nome,
        "dt_nascimento": dtNascimento == null ? null : dtNascimento,
        "sexo": sexo == null ? null : sexo,
        "endereco": endereco == null ? null : endereco,
        "cargo": cargo == null ? null : cargo,
        "orgao": orgao == null ? null : orgao,
        "data_nomeacao": dataNomeacao == null ? null : dataNomeacao,
        "data_exoneracao": dataExoneracao == null ? null : dataExoneracao,
        "data_fim": dataFim == null ? null : dataFim,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
