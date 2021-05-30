// To parse this JSON data, do
//
//     final ceafEntity = ceafEntityFromJson(jsonString);

import 'dart:convert';

List<CeafEntity> ceafEntityFromJson(String str) =>
    List<CeafEntity>.from(json.decode(str).map((x) => CeafEntity.fromJson(x)));

String ceafEntityToJson(List<CeafEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CeafEntity {
  CeafEntity({
    this.fonte,
    this.nome,
    this.cpf,
    this.ufLotacao,
    this.cargoEfetivo,
    this.dataPublicacaoPortariaPunicao,
    this.pagina,
    this.secaoDoDou,
    this.tipoPunicao,
    this.numProcessoAdministrativo,
    this.fundamentoLegal,
    this.id,
    this.resultCode,
    this.resultDescription,
  });

  String fonte;
  String nome;
  String cpf;
  String ufLotacao;
  String cargoEfetivo;
  String dataPublicacaoPortariaPunicao;
  String pagina;
  String secaoDoDou;
  String tipoPunicao;
  String numProcessoAdministrativo;
  String fundamentoLegal;
  String id;
  int resultCode;
  String resultDescription;

  factory CeafEntity.fromJson(Map<String, dynamic> json) => CeafEntity(
        fonte: json["fonte"] == null ? null : json["fonte"],
        nome: json["nome"] == null ? null : json["nome"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        ufLotacao: json["uf_lotacao"] == null ? null : json["uf_lotacao"],
        cargoEfetivo:
            json["cargo_efetivo"] == null ? null : json["cargo_efetivo"],
        dataPublicacaoPortariaPunicao:
            json["data_publicacao_portaria_punicao"] == null
                ? null
                : json["data_publicacao_portaria_punicao"],
        pagina: json["pagina"] == null ? null : json["pagina"],
        secaoDoDou: json["secao_do_dou"] == null ? null : json["secao_do_dou"],
        tipoPunicao: json["tipo_punicao"] == null ? null : json["tipo_punicao"],
        numProcessoAdministrativo: json["num_processo_administrativo"] == null
            ? null
            : json["num_processo_administrativo"],
        fundamentoLegal:
            json["fundamento_legal"] == null ? null : json["fundamento_legal"],
        id: json["id"] == null ? null : json["id"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "fonte": fonte == null ? null : fonte,
        "nome": nome == null ? null : nome,
        "cpf": cpf == null ? null : cpf,
        "uf_lotacao": ufLotacao == null ? null : ufLotacao,
        "cargo_efetivo": cargoEfetivo == null ? null : cargoEfetivo,
        "data_publicacao_portaria_punicao":
            dataPublicacaoPortariaPunicao == null
                ? null
                : dataPublicacaoPortariaPunicao,
        "pagina": pagina == null ? null : pagina,
        "secao_do_dou": secaoDoDou == null ? null : secaoDoDou,
        "tipo_punicao": tipoPunicao == null ? null : tipoPunicao,
        "num_processo_administrativo": numProcessoAdministrativo == null
            ? null
            : numProcessoAdministrativo,
        "fundamento_legal": fundamentoLegal == null ? null : fundamentoLegal,
        "id": id == null ? null : id,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
