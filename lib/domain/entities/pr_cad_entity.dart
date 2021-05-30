// To parse this JSON data, do
//
//     final prCadEntity = prCadEntityFromJson(jsonString);

import 'dart:convert';

List<PrCadEntity> prCadEntityFromJson(String str) => List<PrCadEntity>.from(
    json.decode(str).map((x) => PrCadEntity.fromJson(x)));

String prCadEntityToJson(List<PrCadEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PrCadEntity {
  PrCadEntity({
    this.cadPro,
    this.drr,
    this.dtInicio,
    this.sitAtual,
    this.sitCadastral,
    this.nomeTit,
    this.associados,
    this.ativEconomica,
    this.ativEconomica2,
    this.nomeImovel,
    this.cep,
    this.bairro,
    this.logradouro,
    this.numero,
    this.complemento,
    this.municipio,
    this.uf,
    this.resultCode,
    this.resultDescription,
  });

  String cadPro;
  String drr;
  String dtInicio;
  String sitAtual;
  String sitCadastral;
  String nomeTit;
  String associados;
  String ativEconomica;
  String ativEconomica2;
  String nomeImovel;
  String cep;
  String bairro;
  String logradouro;
  String numero;
  String complemento;
  String municipio;
  String uf;
  int resultCode;
  String resultDescription;

  factory PrCadEntity.fromJson(Map<String, dynamic> json) => PrCadEntity(
        cadPro: json["cad_pro"] == null ? null : json["cad_pro"],
        drr: json["drr"] == null ? null : json["drr"],
        dtInicio: json["dt_inicio"] == null ? null : json["dt_inicio"],
        sitAtual: json["sit_atual"] == null ? null : json["sit_atual"],
        sitCadastral:
            json["sit_cadastral"] == null ? null : json["sit_cadastral"],
        nomeTit: json["nome_tit"] == null ? null : json["nome_tit"],
        associados: json["associados"] == null ? null : json["associados"],
        ativEconomica:
            json["ativ_economica"] == null ? null : json["ativ_economica"],
        ativEconomica2:
            json["ativ_economica_2"] == null ? null : json["ativ_economica_2"],
        nomeImovel: json["nome_imovel"] == null ? null : json["nome_imovel"],
        cep: json["cep"] == null ? null : json["cep"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        logradouro: json["logradouro"] == null ? null : json["logradouro"],
        numero: json["numero"] == null ? null : json["numero"],
        complemento: json["complemento"] == null ? null : json["complemento"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        uf: json["uf"] == null ? null : json["uf"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cad_pro": cadPro == null ? null : cadPro,
        "drr": drr == null ? null : drr,
        "dt_inicio": dtInicio == null ? null : dtInicio,
        "sit_atual": sitAtual == null ? null : sitAtual,
        "sit_cadastral": sitCadastral == null ? null : sitCadastral,
        "nome_tit": nomeTit == null ? null : nomeTit,
        "associados": associados == null ? null : associados,
        "ativ_economica": ativEconomica == null ? null : ativEconomica,
        "ativ_economica_2": ativEconomica2 == null ? null : ativEconomica2,
        "nome_imovel": nomeImovel == null ? null : nomeImovel,
        "cep": cep == null ? null : cep,
        "bairro": bairro == null ? null : bairro,
        "logradouro": logradouro == null ? null : logradouro,
        "numero": numero == null ? null : numero,
        "complemento": complemento == null ? null : complemento,
        "municipio": municipio == null ? null : municipio,
        "uf": uf == null ? null : uf,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
