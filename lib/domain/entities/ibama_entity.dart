// To parse this JSON data, do
//
//     final ibamaEntity = ibamaEntityFromJson(jsonString);

import 'dart:convert';

List<IbamaEntity> ibamaEntityFromJson(String str) => List<IbamaEntity>.from(
    json.decode(str).map((x) => IbamaEntity.fromJson(x)));

String ibamaEntityToJson(List<IbamaEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IbamaEntity {
  IbamaEntity({
    this.numAutoInfracao,
    this.serie,
    this.cpfCnpj,
    this.autuado,
    this.descricaoInfracao,
    this.art1,
    this.art2,
    this.tipoInfracao,
    this.municipio,
    this.uf,
    this.dataAuto,
    this.area,
    this.numProcesso,
    this.id,
    this.resultCode,
    this.resultDescription,
  });

  String numAutoInfracao;
  String serie;
  String cpfCnpj;
  String autuado;
  String descricaoInfracao;
  String art1;
  String art2;
  String tipoInfracao;
  String municipio;
  String uf;
  String dataAuto;
  String area;
  String numProcesso;
  String id;
  int resultCode;
  String resultDescription;

  factory IbamaEntity.fromJson(Map<String, dynamic> json) => IbamaEntity(
        numAutoInfracao: json["num_auto_infracao"] == null
            ? null
            : json["num_auto_infracao"],
        serie: json["serie"] == null ? null : json["serie"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        autuado: json["autuado"] == null ? null : json["autuado"],
        descricaoInfracao: json["descricao_infracao"] == null
            ? null
            : json["descricao_infracao"],
        art1: json["art_1"] == null ? null : json["art_1"],
        art2: json["art_2"] == null ? null : json["art_2"],
        tipoInfracao:
            json["tipo_infracao"] == null ? null : json["tipo_infracao"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        uf: json["uf"] == null ? null : json["uf"],
        dataAuto: json["data_auto"] == null ? null : json["data_auto"],
        area: json["area"] == null ? null : json["area"],
        numProcesso: json["num_processo"] == null ? null : json["num_processo"],
        id: json["id"] == null ? null : json["id"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "num_auto_infracao": numAutoInfracao == null ? null : numAutoInfracao,
        "serie": serie == null ? null : serie,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "autuado": autuado == null ? null : autuado,
        "descricao_infracao":
            descricaoInfracao == null ? null : descricaoInfracao,
        "art_1": art1 == null ? null : art1,
        "art_2": art2 == null ? null : art2,
        "tipo_infracao": tipoInfracao == null ? null : tipoInfracao,
        "municipio": municipio == null ? null : municipio,
        "uf": uf == null ? null : uf,
        "data_auto": dataAuto == null ? null : dataAuto,
        "area": area == null ? null : area,
        "num_processo": numProcesso == null ? null : numProcesso,
        "id": id == null ? null : id,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
