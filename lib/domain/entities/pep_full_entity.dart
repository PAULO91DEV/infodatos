// To parse this JSON data, do
//
//     final pepFullEntity = pepFullEntityFromJson(jsonString);

import 'dart:convert';

PepFullResponseEntity pepFullResponseEntityFromJson(String str) {
  return PepFullResponseEntity.fromJson(json.decode(str));
}

String pepFullResponseEntityToJson(PepFullResponseEntity data) =>
    json.encode(data.toJson());

class PepFullResponseEntity {
  PepFullResponseEntity({
    this.success,
    this.data,
  });

  bool success;
  PepFullDataEntity data;

  factory PepFullResponseEntity.fromJson(Map<String, dynamic> json) {
    return PepFullResponseEntity(
      success: json["success"] == null ? null : json["success"],
      data: json["data"] == null
          ? null
          : PepFullDataEntity.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
      };
}

class PepFullDataEntity {
  PepFullDataEntity({
    this.response,
    this.result,
  });

  PepFullResponseMessageEntity response;
  Map<String, PepFullResultEntity> result;

  factory PepFullDataEntity.fromJson(Map<String, dynamic> json) =>
      PepFullDataEntity(
        response: json["response"] == null
            ? null
            : PepFullResponseMessageEntity.fromJson(json["response"]),
        result: json["result"] == null
            ? null
            : Map.from(json["result"]).map((k, v) =>
                MapEntry<String, PepFullResultEntity>(
                    k, PepFullResultEntity.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "response": response == null ? null : response.toJson(),
        "result": result == null
            ? null
            : Map.from(result)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class PepFullResponseMessageEntity {
  PepFullResponseMessageEntity({
    this.code,
    this.message,
  });

  int code;
  String message;

  factory PepFullResponseMessageEntity.fromJson(Map<String, dynamic> json) =>
      PepFullResponseMessageEntity(
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "message": message == null ? null : message,
      };
}

class PepFullResultEntity {
  PepFullResultEntity({
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
  List<PepFullMandatoEntity> mandatos;

  factory PepFullResultEntity.fromJson(Map<String, dynamic> json) =>
      PepFullResultEntity(
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
            : List<PepFullMandatoEntity>.from(
                json["mandatos"].map((x) => PepFullMandatoEntity.fromJson(x))),
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

class PepFullMandatoEntity {
  PepFullMandatoEntity({
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

  factory PepFullMandatoEntity.fromJson(Map<String, dynamic> json) =>
      PepFullMandatoEntity(
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
