// To parse this JSON data, do
//
//     final tjpjEntity = tjpjEntityFromJson(jsonString);

import 'dart:convert';

List<TjpjEntity> tjpjEntityFromJson(String str) =>
    List<TjpjEntity>.from(json.decode(str).map((x) => TjpjEntity.fromJson(x)));

String tjpjEntityToJson(List<TjpjEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TjpjEntity {
  TjpjEntity({
    this.numProcesso,
    this.dataDivulgacao,
    this.diarioPesquisado,
    this.tribunal,
    this.pagina,
    this.recorte,
    this.resultCode,
    this.resultDescription,
  });

  String numProcesso;
  String dataDivulgacao;
  String diarioPesquisado;
  String tribunal;
  String pagina;
  String recorte;
  int resultCode;
  String resultDescription;

  factory TjpjEntity.fromJson(Map<String, dynamic> json) => TjpjEntity(
        numProcesso: json["num_processo"] == null ? null : json["num_processo"],
        dataDivulgacao:
            json["data_divulgacao"] == null ? null : json["data_divulgacao"],
        diarioPesquisado: json["diario_pesquisado"] == null
            ? null
            : json["diario_pesquisado"],
        tribunal: json["tribunal"] == null ? null : json["tribunal"],
        pagina: json["pagina"] == null ? null : json["pagina"],
        recorte: json["recorte"] == null ? null : json["recorte"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "num_processo": numProcesso == null ? null : numProcesso,
        "data_divulgacao": dataDivulgacao == null ? null : dataDivulgacao,
        "diario_pesquisado": diarioPesquisado == null ? null : diarioPesquisado,
        "tribunal": tribunal == null ? null : tribunal,
        "pagina": pagina == null ? null : pagina,
        "recorte": recorte == null ? null : recorte,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
