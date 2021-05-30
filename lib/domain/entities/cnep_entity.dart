// To parse this JSON data, do
//
//     final cnepEntity = cnepEntityFromJson(jsonString);

import 'dart:convert';

List<CnepEntity> cnepEntityFromJson(String str) =>
    List<CnepEntity>.from(json.decode(str).map((x) => CnepEntity.fromJson(x)));

String cnepEntityToJson(List<CnepEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CnepEntity {
  CnepEntity({
    this.fonte,
    this.razaoSocial,
    this.nome,
    this.cpfCnpj,
    this.ufSancionado,
    this.tipoSancao,
    this.dtInicioSancao,
    this.dtFinalSancao,
    this.orgaoSancionador,
    this.valorMulta,
    this.id,
    this.resultCode,
    this.resultDescription,
  });

  String fonte;
  String razaoSocial;
  String nome;
  String cpfCnpj;
  String ufSancionado;
  String tipoSancao;
  String dtInicioSancao;
  String dtFinalSancao;
  String orgaoSancionador;
  String valorMulta;
  String id;
  int resultCode;
  String resultDescription;

  factory CnepEntity.fromJson(Map<String, dynamic> json) => CnepEntity(
        fonte: json["fonte"] == null ? null : json["fonte"],
        razaoSocial: json["razao_social"] == null ? null : json["razao_social"],
        nome: json["nome"] == null ? null : json["nome"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        ufSancionado:
            json["uf_sancionado"] == null ? null : json["uf_sancionado"],
        tipoSancao: json["tipo_sancao"] == null ? null : json["tipo_sancao"],
        dtInicioSancao:
            json["dt_inicio_sancao"] == null ? null : json["dt_inicio_sancao"],
        dtFinalSancao:
            json["dt_final_sancao"] == null ? null : json["dt_final_sancao"],
        orgaoSancionador: json["orgao_sancionador"] == null
            ? null
            : json["orgao_sancionador"],
        valorMulta: json["valor_multa"] == null ? null : json["valor_multa"],
        id: json["id"] == null ? null : json["id"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "fonte": fonte == null ? null : fonte,
        "razao_social": razaoSocial == null ? null : razaoSocial,
        "nome": nome == null ? null : nome,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "uf_sancionado": ufSancionado == null ? null : ufSancionado,
        "tipo_sancao": tipoSancao == null ? null : tipoSancao,
        "dt_inicio_sancao": dtInicioSancao == null ? null : dtInicioSancao,
        "dt_final_sancao": dtFinalSancao == null ? null : dtFinalSancao,
        "orgao_sancionador": orgaoSancionador == null ? null : orgaoSancionador,
        "valor_multa": valorMulta == null ? null : valorMulta,
        "id": id == null ? null : id,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
