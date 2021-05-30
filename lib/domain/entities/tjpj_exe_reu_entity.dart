// To parse this JSON data, do
//
//     final tjpjExeReuEntity = tjpjExeReuEntityFromJson(jsonString);

import 'dart:convert';

List<TjpjExeReuEntity> tjpjExeReuEntityFromJson(String str) =>
    List<TjpjExeReuEntity>.from(
        json.decode(str).map((x) => TjpjExeReuEntity.fromJson(x)));

String tjpjExeReuEntityToJson(List<TjpjExeReuEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TjpjExeReuEntity {
  TjpjExeReuEntity({
    this.tipoAcao,
    this.numProcesso,
    this.vara,
    this.comarca,
    this.exequenteRequerente,
    this.cpfCnpjExe,
    this.executadoReu,
    this.cpfCnpjReu,
    this.edital,
    this.dataDistribuicao,
    this.fonteCaptacao,
    this.numJornal,
    this.resultCode,
    this.resultDescription,
  });

  String tipoAcao;
  String numProcesso;
  String vara;
  String comarca;
  String exequenteRequerente;
  String cpfCnpjExe;
  String executadoReu;
  String cpfCnpjReu;
  String edital;
  String dataDistribuicao;
  String fonteCaptacao;
  String numJornal;
  int resultCode;
  String resultDescription;

  factory TjpjExeReuEntity.fromJson(Map<String, dynamic> json) =>
      TjpjExeReuEntity(
        tipoAcao: json["tipo_acao"] == null ? null : json["tipo_acao"],
        numProcesso: json["num_processo"] == null ? null : json["num_processo"],
        vara: json["vara"] == null ? null : json["vara"],
        comarca: json["comarca"] == null ? null : json["comarca"],
        exequenteRequerente: json["exequente_requerente"] == null
            ? null
            : json["exequente_requerente"],
        cpfCnpjExe: json["cpf_cnpj_exe"] == null ? null : json["cpf_cnpj_exe"],
        executadoReu:
            json["executado_reu"] == null ? null : json["executado_reu"],
        cpfCnpjReu: json["cpf_cnpj_reu"] == null ? null : json["cpf_cnpj_reu"],
        edital: json["edital"] == null ? null : json["edital"],
        dataDistribuicao: json["data_distribuicao"] == null
            ? null
            : json["data_distribuicao"],
        fonteCaptacao:
            json["fonte_captacao"] == null ? null : json["fonte_captacao"],
        numJornal: json["num_jornal"] == null ? null : json["num_jornal"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "tipo_acao": tipoAcao == null ? null : tipoAcao,
        "num_processo": numProcesso == null ? null : numProcesso,
        "vara": vara == null ? null : vara,
        "comarca": comarca == null ? null : comarca,
        "exequente_requerente":
            exequenteRequerente == null ? null : exequenteRequerente,
        "cpf_cnpj_exe": cpfCnpjExe == null ? null : cpfCnpjExe,
        "executado_reu": executadoReu == null ? null : executadoReu,
        "cpf_cnpj_reu": cpfCnpjReu == null ? null : cpfCnpjReu,
        "edital": edital == null ? null : edital,
        "data_distribuicao": dataDistribuicao == null ? null : dataDistribuicao,
        "fonte_captacao": fonteCaptacao == null ? null : fonteCaptacao,
        "num_jornal": numJornal == null ? null : numJornal,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
