// To parse this JSON data, do
//
//     final sufEntity = sufEntityFromJson(jsonString);

import 'dart:convert';

List<SufEntity> sufEntityFromJson(String str) =>
    List<SufEntity>.from(json.decode(str).map((x) => SufEntity.fromJson(x)));

String sufEntityToJson(List<SufEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SufEntity {
  SufEntity({
    this.cnpj,
    this.inscrSuframa,
    this.situacao,
    this.empresa,
    this.municipio,
    this.endereco,
    this.cep,
    this.telefone,
    this.fax,
    this.email,
    this.dirigente,
    this.inicioAtiv,
    this.areaConstruida,
    this.areaTerreno,
    this.maoObra,
    this.investTotal,
    this.ncm,
    this.obs,
    this.resultCode,
    this.resultDescription,
  });

  String cnpj;
  String inscrSuframa;
  String situacao;
  String empresa;
  String municipio;
  String endereco;
  String cep;
  String telefone;
  String fax;
  String email;
  String dirigente;
  String inicioAtiv;
  String areaConstruida;
  String areaTerreno;
  String maoObra;
  String investTotal;
  String ncm;
  String obs;
  int resultCode;
  String resultDescription;

  factory SufEntity.fromJson(Map<String, dynamic> json) => SufEntity(
        cnpj: json["cnpj"] == null ? null : json["cnpj"],
        inscrSuframa:
            json["inscr_suframa"] == null ? null : json["inscr_suframa"],
        situacao: json["situacao"] == null ? null : json["situacao"],
        empresa: json["empresa"] == null ? null : json["empresa"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        cep: json["cep"] == null ? null : json["cep"],
        telefone: json["telefone"] == null ? null : json["telefone"],
        fax: json["fax"] == null ? null : json["fax"],
        email: json["email"] == null ? null : json["email"],
        dirigente: json["dirigente"] == null ? null : json["dirigente"],
        inicioAtiv: json["inicio_ativ"] == null ? null : json["inicio_ativ"],
        areaConstruida:
            json["area_construida"] == null ? null : json["area_construida"],
        areaTerreno: json["area_terreno"] == null ? null : json["area_terreno"],
        maoObra: json["mao_obra"] == null ? null : json["mao_obra"],
        investTotal: json["invest_total"] == null ? null : json["invest_total"],
        ncm: json["ncm"] == null ? null : json["ncm"],
        obs: json["obs"] == null ? null : json["obs"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpj,
        "inscr_suframa": inscrSuframa == null ? null : inscrSuframa,
        "situacao": situacao == null ? null : situacao,
        "empresa": empresa == null ? null : empresa,
        "municipio": municipio == null ? null : municipio,
        "endereco": endereco == null ? null : endereco,
        "cep": cep == null ? null : cep,
        "telefone": telefone == null ? null : telefone,
        "fax": fax == null ? null : fax,
        "email": email == null ? null : email,
        "dirigente": dirigente == null ? null : dirigente,
        "inicio_ativ": inicioAtiv == null ? null : inicioAtiv,
        "area_construida": areaConstruida == null ? null : areaConstruida,
        "area_terreno": areaTerreno == null ? null : areaTerreno,
        "mao_obra": maoObra == null ? null : maoObra,
        "invest_total": investTotal == null ? null : investTotal,
        "ncm": ncm == null ? null : ncm,
        "obs": obs == null ? null : obs,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
