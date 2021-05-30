// To parse this JSON data, do
//
//     final pepRelFullDocResponse = pepRelFullDocResponseFromJson(jsonString);

import 'dart:convert';

PepRelFullDocResponse pepRelFullDocResponseFromJson(String str) =>
    PepRelFullDocResponse.fromJson(json.decode(str));

String pepRelFullDocResponseToJson(PepRelFullDocResponse data) =>
    json.encode(data.toJson());

class PepRelFullDocResponse {
  PepRelFullDocResponse({
    this.success,
    this.data,
  });

  bool success;
  PepRelFullDocData data;

  factory PepRelFullDocResponse.fromJson(Map<String, dynamic> json) =>
      PepRelFullDocResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : PepRelFullDocData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
      };
}

class PepRelFullDocData {
  PepRelFullDocData({
    this.response,
    this.result,
  });

  PepRelFullDocDataResponse response;
  List<PepRelFullDocDataResult> result;

  factory PepRelFullDocData.fromJson(Map<String, dynamic> json) =>
      PepRelFullDocData(
        response: json["response"] == null
            ? null
            : PepRelFullDocDataResponse.fromJson(json["response"]),
        result: json["result"] == null
            ? null
            : List<PepRelFullDocDataResult>.from(
                json["result"].map((x) => PepRelFullDocDataResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "response": response == null ? null : response.toJson(),
        "result": result == null
            ? null
            : List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class PepRelFullDocDataResponse {
  PepRelFullDocDataResponse({
    this.code,
    this.message,
  });

  int code;
  String message;

  factory PepRelFullDocDataResponse.fromJson(Map<String, dynamic> json) =>
      PepRelFullDocDataResponse(
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "message": message == null ? null : message,
      };
}

class PepRelFullDocDataResult {
  PepRelFullDocDataResult({
    this.vinculo,
    this.nomeRelacionado,
    this.tipo,
    this.cpfCnpj,
    this.descricaoRelacionamento,
    this.resultCode,
    this.resultDescription,
    this.cpfCnpjFormat,
    this.cpfCnpjMascara,
  });

  String vinculo;
  String nomeRelacionado;
  String tipo;
  String cpfCnpj;
  String descricaoRelacionamento;
  int resultCode;
  String resultDescription;
  String cpfCnpjFormat;
  String cpfCnpjMascara;

  factory PepRelFullDocDataResult.fromJson(Map<String, dynamic> json) =>
      PepRelFullDocDataResult(
        vinculo: json["vinculo"] == null ? null : json["vinculo"],
        nomeRelacionado:
            json["nome_relacionado"] == null ? null : json["nome_relacionado"],
        tipo: json["tipo"] == null ? null : json["tipo"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        descricaoRelacionamento: json["descricao_relacionamento"] == null
            ? null
            : json["descricao_relacionamento"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
        cpfCnpjFormat:
            json["cpf_cnpj_format"] == null ? null : json["cpf_cnpj_format"],
        cpfCnpjMascara:
            json["cpf_cnpj_mascara"] == null ? null : json["cpf_cnpj_mascara"],
      );

  Map<String, dynamic> toJson() => {
        "vinculo": vinculo == null ? null : vinculo,
        "nome_relacionado": nomeRelacionado == null ? null : nomeRelacionado,
        "tipo": tipo == null ? null : tipo,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "descricao_relacionamento":
            descricaoRelacionamento == null ? null : descricaoRelacionamento,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
        "cpf_cnpj_format": cpfCnpjFormat == null ? null : cpfCnpjFormat,
        "cpf_cnpj_mascara": cpfCnpjMascara == null ? null : cpfCnpjMascara,
      };
}
