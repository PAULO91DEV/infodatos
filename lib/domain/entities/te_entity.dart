// To parse this JSON data, do
//
//     final teEntity = teEntityFromJson(jsonString);

import 'dart:convert';

List<TeEntity> teEntityFromJson(String str) =>
    List<TeEntity>.from(json.decode(str).map((x) => TeEntity.fromJson(x)));

String teEntityToJson(List<TeEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeEntity {
  TeEntity({
    this.anoAcaoFiscal,
    this.uf,
    this.nomeRzsc,
    this.cnpjCpf,
    this.estabelecimento,
    this.trabalhadoresEnvolvidos,
    this.cnae,
    this.dataDecisao,
    this.dataInclusao,
    this.resultCode,
    this.resultDescription,
  });

  String anoAcaoFiscal;
  String uf;
  String nomeRzsc;
  String cnpjCpf;
  String estabelecimento;
  String trabalhadoresEnvolvidos;
  String cnae;
  String dataDecisao;
  String dataInclusao;
  int resultCode;
  String resultDescription;

  factory TeEntity.fromJson(Map<String, dynamic> json) => TeEntity(
        anoAcaoFiscal:
            json["ano_acao_fiscal"] == null ? null : json["ano_acao_fiscal"],
        uf: json["uf"] == null ? null : json["uf"],
        nomeRzsc: json["nome_rzsc"] == null ? null : json["nome_rzsc"],
        cnpjCpf: json["cnpj_cpf"] == null ? null : json["cnpj_cpf"],
        estabelecimento:
            json["estabelecimento"] == null ? null : json["estabelecimento"],
        trabalhadoresEnvolvidos: json["trabalhadores_envolvidos"] == null
            ? null
            : json["trabalhadores_envolvidos"],
        cnae: json["cnae"] == null ? null : json["cnae"],
        dataDecisao: json["data_decisao"] == null ? null : json["data_decisao"],
        dataInclusao:
            json["data_inclusao"] == null ? null : json["data_inclusao"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "ano_acao_fiscal": anoAcaoFiscal == null ? null : anoAcaoFiscal,
        "uf": uf == null ? null : uf,
        "nome_rzsc": nomeRzsc == null ? null : nomeRzsc,
        "cnpj_cpf": cnpjCpf == null ? null : cnpjCpf,
        "estabelecimento": estabelecimento == null ? null : estabelecimento,
        "trabalhadores_envolvidos":
            trabalhadoresEnvolvidos == null ? null : trabalhadoresEnvolvidos,
        "cnae": cnae == null ? null : cnae,
        "data_decisao": dataDecisao == null ? null : dataDecisao,
        "data_inclusao": dataInclusao == null ? null : dataInclusao,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
