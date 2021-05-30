// To parse this JSON data, do
//
//     final pepFullDocumentResponseEntity = pepFullDocumentResponseEntityFromJson(jsonString);

import 'dart:convert';

PepFullDocumentResponseEntity pepFullDocumentResponseEntityFromJson(
        String str) =>
    PepFullDocumentResponseEntity.fromJson(json.decode(str));

String pepFullDocumentResponseEntityToJson(
        PepFullDocumentResponseEntity data) =>
    json.encode(data.toJson());

class PepFullDocumentResponseEntity {
  PepFullDocumentResponseEntity({
    this.success,
    this.data,
  });

  bool success;
  PepFullDocumentDataEntity data;

  factory PepFullDocumentResponseEntity.fromJson(Map<String, dynamic> json) =>
      PepFullDocumentResponseEntity(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : PepFullDocumentDataEntity.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
      };
}

class PepFullDocumentDataEntity {
  PepFullDocumentDataEntity({
    this.response,
    this.result,
  });

  PepFullDocumentDataResponseEntity response;
  PepFullDocumentDataResultEntity result;

  factory PepFullDocumentDataEntity.fromJson(Map<String, dynamic> json) =>
      PepFullDocumentDataEntity(
        response: json["response"] == null
            ? null
            : PepFullDocumentDataResponseEntity.fromJson(json["response"]),
        result: json["result"] == null
            ? null
            : PepFullDocumentDataResultEntity.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response == null ? null : response.toJson(),
        "result": result == null ? null : result.toJson(),
      };
}

class PepFullDocumentDataResponseEntity {
  PepFullDocumentDataResponseEntity({
    this.code,
    this.message,
  });

  int code;
  String message;

  factory PepFullDocumentDataResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      PepFullDocumentDataResponseEntity(
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "message": message == null ? null : message,
      };
}

class PepFullDocumentDataResultEntity {
  PepFullDocumentDataResultEntity({
    this.classificacaoPep,
    this.cpfCnpj,
    this.cpfCnpjFormat,
    this.cpfCnpjMascara,
    this.nome,
    this.dtNascimento,
    this.sexo,
    this.endereco,
    this.mandatos,
  });

  String classificacaoPep;
  String cpfCnpj;
  String cpfCnpjFormat;
  String cpfCnpjMascara;
  String nome;
  String dtNascimento;
  String sexo;
  String endereco;
  List<Mandato> mandatos;

  factory PepFullDocumentDataResultEntity.fromJson(Map<String, dynamic> json) =>
      PepFullDocumentDataResultEntity(
        classificacaoPep: json["classificacao_pep"] == null
            ? null
            : json["classificacao_pep"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        cpfCnpjFormat:
            json["cpf_cnpj_format"] == null ? null : json["cpf_cnpj_format"],
        cpfCnpjMascara:
            json["cpf_cnpj_mascara"] == null ? null : json["cpf_cnpj_mascara"],
        nome: json["nome"] == null ? null : json["nome"],
        dtNascimento:
            json["dt_nascimento"] == null ? null : json["dt_nascimento"],
        sexo: json["sexo"] == null ? null : json["sexo"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        mandatos: json["mandatos"] == null
            ? null
            : List<Mandato>.from(
                json["mandatos"].map((x) => Mandato.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "classificacao_pep": classificacaoPep == null ? null : classificacaoPep,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "cpf_cnpj_format": cpfCnpjFormat == null ? null : cpfCnpjFormat,
        "cpf_cnpj_mascara": cpfCnpjMascara == null ? null : cpfCnpjMascara,
        "nome": nome == null ? null : nome,
        "dt_nascimento": dtNascimento == null ? null : dtNascimento,
        "sexo": sexo == null ? null : sexo,
        "endereco": endereco == null ? null : endereco,
        "mandatos": mandatos == null
            ? null
            : List<dynamic>.from(mandatos.map((x) => x.toJson())),
      };
}

class Mandato {
  Mandato({
    this.cargo,
    this.orgao,
    this.dataNomeacao,
    this.dataExoneracao,
    this.dataFim,
  });

  String cargo;
  String orgao;
  String dataNomeacao;
  String dataExoneracao;
  String dataFim;

  factory Mandato.fromJson(Map<String, dynamic> json) => Mandato(
        cargo: json["cargo"] == null ? null : json["cargo"],
        orgao: json["orgao"] == null ? null : json["orgao"],
        dataNomeacao:
            json["data_nomeacao"] == null ? null : json["data_nomeacao"],
        dataExoneracao:
            json["data_exoneracao"] == null ? null : json["data_exoneracao"],
        dataFim: json["data_fim"] == null ? null : json["data_fim"],
      );

  Map<String, dynamic> toJson() => {
        "cargo": cargo == null ? null : cargo,
        "orgao": orgao == null ? null : orgao,
        "data_nomeacao": dataNomeacao == null ? null : dataNomeacao,
        "data_exoneracao": dataExoneracao == null ? null : dataExoneracao,
        "data_fim": dataFim == null ? null : dataFim,
      };
}
