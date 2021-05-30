// To parse this JSON data, do
//
//     final srvEntity = srvEntityFromJson(jsonString);

import 'dart:convert';

List<SrvEntity> srvEntityFromJson(String str) =>
    List<SrvEntity>.from(json.decode(str).map((x) => SrvEntity.fromJson(x)));

String srvEntityToJson(List<SrvEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SrvEntity {
  SrvEntity({
    this.cargo,
    this.nome,
    this.cpf,
    this.dtNascimento,
    this.endereco,
    this.orgao,
    this.dataIngressoFuncao,
    this.dataIngressoOrgao,
    this.dataDiplomaIngressoServicopublico,
    this.ufExercicio,
    this.resultCode,
    this.resultDescription,
  });

  String cargo;
  String nome;
  String cpf;
  String dtNascimento;
  String endereco;
  String orgao;
  String dataIngressoFuncao;
  String dataIngressoOrgao;
  String dataDiplomaIngressoServicopublico;
  String ufExercicio;
  int resultCode;
  String resultDescription;

  factory SrvEntity.fromJson(Map<String, dynamic> json) => SrvEntity(
        cargo: json["cargo"] == null ? null : json["cargo"],
        nome: json["nome"] == null ? null : json["nome"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        dtNascimento:
            json["dt_nascimento"] == null ? null : json["dt_nascimento"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        orgao: json["orgao"] == null ? null : json["orgao"],
        dataIngressoFuncao: json["data_ingresso_funcao"] == null
            ? null
            : json["data_ingresso_funcao"],
        dataIngressoOrgao: json["data_ingresso_orgao"] == null
            ? null
            : json["data_ingresso_orgao"],
        dataDiplomaIngressoServicopublico:
            json["data_diploma_ingresso_servicopublico"] == null
                ? null
                : json["data_diploma_ingresso_servicopublico"],
        ufExercicio: json["uf_exercicio"] == null ? null : json["uf_exercicio"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cargo": cargo == null ? null : cargo,
        "nome": nome == null ? null : nome,
        "cpf": cpf == null ? null : cpf,
        "dt_nascimento": dtNascimento == null ? null : dtNascimento,
        "endereco": endereco == null ? null : endereco,
        "orgao": orgao == null ? null : orgao,
        "data_ingresso_funcao":
            dataIngressoFuncao == null ? null : dataIngressoFuncao,
        "data_ingresso_orgao":
            dataIngressoOrgao == null ? null : dataIngressoOrgao,
        "data_diploma_ingresso_servicopublico":
            dataDiplomaIngressoServicopublico == null
                ? null
                : dataDiplomaIngressoServicopublico,
        "uf_exercicio": ufExercicio == null ? null : ufExercicio,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
