// To parse this JSON data, do
//
//     final sintegraEntity = sintegraEntityFromJson(jsonString);

import 'dart:convert';

List<SintegraEntity> sintegraEntityFromJson(String str) =>
    List<SintegraEntity>.from(
        json.decode(str).map((x) => SintegraEntity.fromJson(x)));

String sintegraEntityToJson(List<SintegraEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SintegraEntity {
  SintegraEntity({
    this.cnpjCpf,
    this.ie,
    this.nire,
    this.nomeEmpresa,
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.municipio,
    this.uf,
    this.cep,
    this.telefone,
    this.email,
    this.ativEconomica,
    this.dtInicio,
    this.sitAtual,
    this.sitCadastral,
    this.nfe,
    this.cte,
    this.efd,
    this.resultCode,
    this.resultDescription,
  });

  String cnpjCpf;
  String ie;
  String nire;
  String nomeEmpresa;
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String municipio;
  String uf;
  String cep;
  String telefone;
  String email;
  String ativEconomica;
  String dtInicio;
  String sitAtual;
  String sitCadastral;
  String nfe;
  String cte;
  String efd;
  int resultCode;
  String resultDescription;

  factory SintegraEntity.fromJson(Map<String, dynamic> json) => SintegraEntity(
        cnpjCpf: json["cnpj_cpf"] == null ? null : json["cnpj_cpf"],
        ie: json["ie"] == null ? null : json["ie"],
        nire: json["nire"] == null ? null : json["nire"],
        nomeEmpresa: json["nome_empresa"] == null ? null : json["nome_empresa"],
        logradouro: json["logradouro"] == null ? null : json["logradouro"],
        numero: json["numero"] == null ? null : json["numero"],
        complemento: json["complemento"] == null ? null : json["complemento"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        uf: json["uf"] == null ? null : json["uf"],
        cep: json["cep"] == null ? null : json["cep"],
        telefone: json["telefone"] == null ? null : json["telefone"],
        email: json["email"] == null ? null : json["email"],
        ativEconomica:
            json["ativ_economica"] == null ? null : json["ativ_economica"],
        dtInicio: json["dt_inicio"] == null ? null : json["dt_inicio"],
        sitAtual: json["sit_atual"] == null ? null : json["sit_atual"],
        sitCadastral:
            json["sit_cadastral"] == null ? null : json["sit_cadastral"],
        nfe: json["nfe"] == null ? null : json["nfe"],
        cte: json["cte"] == null ? null : json["cte"],
        efd: json["efd"] == null ? null : json["efd"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj_cpf": cnpjCpf == null ? null : cnpjCpf,
        "ie": ie == null ? null : ie,
        "nire": nire == null ? null : nire,
        "nome_empresa": nomeEmpresa == null ? null : nomeEmpresa,
        "logradouro": logradouro == null ? null : logradouro,
        "numero": numero == null ? null : numero,
        "complemento": complemento == null ? null : complemento,
        "bairro": bairro == null ? null : bairro,
        "municipio": municipio == null ? null : municipio,
        "uf": uf == null ? null : uf,
        "cep": cep == null ? null : cep,
        "telefone": telefone == null ? null : telefone,
        "email": email == null ? null : email,
        "ativ_economica": ativEconomica == null ? null : ativEconomica,
        "dt_inicio": dtInicio == null ? null : dtInicio,
        "sit_atual": sitAtual == null ? null : sitAtual,
        "sit_cadastral": sitCadastral == null ? null : sitCadastral,
        "nfe": nfe == null ? null : nfe,
        "cte": cte == null ? null : cte,
        "efd": efd == null ? null : efd,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
