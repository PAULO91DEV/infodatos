// To parse this JSON data, do
//
//     final pepBondRelatedResponseEntity = pepBondRelatedResponseEntityFromJson(jsonString);

import 'dart:convert';

PepBondRelatedResponseEntity pepBondRelatedResponseEntityFromJson(String str) =>
    PepBondRelatedResponseEntity.fromJson(json.decode(str));

String pepBondRelatedResponseEntityToJson(PepBondRelatedResponseEntity data) =>
    json.encode(data.toJson());

class PepBondRelatedResponseEntity {
  PepBondRelatedResponseEntity({
    this.success,
    this.data,
  });

  bool success;
  PepBondRelatedDataEntity data;

  factory PepBondRelatedResponseEntity.fromJson(Map<String, dynamic> json) =>
      PepBondRelatedResponseEntity(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : PepBondRelatedDataEntity.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
      };
}

class PepBondRelatedDataEntity {
  PepBondRelatedDataEntity({
    this.parental,
    this.corporate,
  });

  PepBondRelatedDataParentalEntity parental;
  PepBondRelatedDataCorporateEntity corporate;

  factory PepBondRelatedDataEntity.fromJson(Map<String, dynamic> json) =>
      PepBondRelatedDataEntity(
        parental: json["parental"] == null
            ? null
            : PepBondRelatedDataParentalEntity.fromJson(json["parental"]),
        corporate: json["societario"] == null
            ? null
            : PepBondRelatedDataCorporateEntity.fromJson(json["societario"]),
      );

  Map<String, dynamic> toJson() => {
        "parental": parental == null ? null : parental.toJson(),
        "societario": corporate == null ? null : corporate.toJson(),
      };
}

class PepBondRelatedDataParentalEntity {
  PepBondRelatedDataParentalEntity({
    this.result,
    this.response,
  });

  List<PepBondRelatedDataParentalResultElementEntity> result;
  Response response;

  factory PepBondRelatedDataParentalEntity.fromJson(
          Map<String, dynamic> json) =>
      PepBondRelatedDataParentalEntity(
        result: json["result"] == null
            ? null
            : List<PepBondRelatedDataParentalResultElementEntity>.from(
                json["result"].map((x) =>
                    PepBondRelatedDataParentalResultElementEntity.fromJson(x))),
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "result": result == null
            ? null
            : List<dynamic>.from(result.map((x) => x.toJson())),
        "response": response == null ? null : response.toJson(),
      };
}

class Response {
  Response({
    this.code,
    this.message,
  });

  int code;
  String message;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "message": message == null ? null : message,
      };
}

class PepBondRelatedDataParentalResultElementEntity {
  PepBondRelatedDataParentalResultElementEntity({
    this.tipoPessoa,
    this.nomeRelacionado,
    this.cpfCnpj,
    this.descricaoRelacionamento,
    this.resultCode,
    this.resultDescription,
    this.cpfCnpjFormat,
    this.cpfCnpjMascara,
  });

  dynamic tipoPessoa;
  String nomeRelacionado;
  String cpfCnpj;
  String descricaoRelacionamento;
  int resultCode;
  String resultDescription;
  String cpfCnpjFormat;
  String cpfCnpjMascara;

  factory PepBondRelatedDataParentalResultElementEntity.fromJson(
          Map<String, dynamic> json) =>
      PepBondRelatedDataParentalResultElementEntity(
        tipoPessoa: json["TipoPessoa"],
        nomeRelacionado:
            json["nome_relacionado"] == null ? null : json["nome_relacionado"],
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
        "TipoPessoa": tipoPessoa,
        "nome_relacionado": nomeRelacionado == null ? null : nomeRelacionado,
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

class PepBondRelatedDataCorporateEntity {
  PepBondRelatedDataCorporateEntity({
    this.result,
    this.response,
  });

  Map<String, PepBondRelatedDataCorporateResultValueEntity> result;
  Response response;

  factory PepBondRelatedDataCorporateEntity.fromJson(
          Map<String, dynamic> json) =>
      PepBondRelatedDataCorporateEntity(
        result: json["result"] == null
            ? null
            : Map.from(json["result"]).map((k, v) =>
                MapEntry<String, PepBondRelatedDataCorporateResultValueEntity>(
                    k,
                    PepBondRelatedDataCorporateResultValueEntity.fromJson(v))),
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "result": result == null
            ? null
            : Map.from(result)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "response": response == null ? null : response.toJson(),
      };
}

class PepBondRelatedDataCorporateResultValueEntity {
  PepBondRelatedDataCorporateResultValueEntity({
    this.cpfCnpj,
    this.cpfCnpjFormat,
    this.cpfCnpjMascara,
    this.nomeEmpresa,
    this.municipioUf,
    this.endereco,
    this.situacaoRf,
    this.capitalSocial,
    this.socios,
  });

  String cpfCnpj;
  String cpfCnpjFormat;
  String cpfCnpjMascara;
  String nomeEmpresa;
  String municipioUf;
  String endereco;
  String situacaoRf;
  String capitalSocial;
  List<PepBondRelatedDataCorporateResultValueSocioEntity> socios;

  factory PepBondRelatedDataCorporateResultValueEntity.fromJson(
          Map<String, dynamic> json) =>
      PepBondRelatedDataCorporateResultValueEntity(
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        cpfCnpjFormat:
            json["cpf_cnpj_format"] == null ? null : json["cpf_cnpj_format"],
        cpfCnpjMascara:
            json["cpf_cnpj_mascara"] == null ? null : json["cpf_cnpj_mascara"],
        nomeEmpresa: json["nome_empresa"] == null ? null : json["nome_empresa"],
        municipioUf: json["municipio_uf"] == null ? null : json["municipio_uf"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        situacaoRf: json["situacao_rf"] == null ? null : json["situacao_rf"],
        capitalSocial:
            json["capital_social"] == null ? null : json["capital_social"],
        socios: json["socios"] == null
            ? null
            : List<PepBondRelatedDataCorporateResultValueSocioEntity>.from(
                json["socios"].map((x) =>
                    PepBondRelatedDataCorporateResultValueSocioEntity.fromJson(
                        x))),
      );

  Map<String, dynamic> toJson() => {
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "cpf_cnpj_format": cpfCnpjFormat == null ? null : cpfCnpjFormat,
        "cpf_cnpj_mascara": cpfCnpjMascara == null ? null : cpfCnpjMascara,
        "nome_empresa": nomeEmpresa == null ? null : nomeEmpresa,
        "municipio_uf": municipioUf == null ? null : municipioUf,
        "endereco": endereco == null ? null : endereco,
        "situacao_rf": situacaoRf == null ? null : situacaoRf,
        "capital_social": capitalSocial == null ? null : capitalSocial,
        "socios": socios == null
            ? null
            : List<dynamic>.from(socios.map((x) => x.toJson())),
      };
}

class PepBondRelatedDataCorporateResultValueSocioEntity {
  PepBondRelatedDataCorporateResultValueSocioEntity({
    this.tipoVinculo,
    this.nomeSocio,
    this.cpfCnpjSocio,
    this.cpfCnpjSocioFormat,
    this.cpfCnpjSocioMascara,
    this.descricaoQualifSocio,
  });

  String tipoVinculo;
  String nomeSocio;
  String cpfCnpjSocio;
  String cpfCnpjSocioFormat;
  String cpfCnpjSocioMascara;
  String descricaoQualifSocio;

  factory PepBondRelatedDataCorporateResultValueSocioEntity.fromJson(
          Map<String, dynamic> json) =>
      PepBondRelatedDataCorporateResultValueSocioEntity(
        tipoVinculo: json["Tipo_Vinculo"] == null ? null : json["Tipo_Vinculo"],
        nomeSocio: json["nome_socio"] == null ? null : json["nome_socio"],
        cpfCnpjSocio:
            json["cpf_cnpj_socio"] == null ? null : json["cpf_cnpj_socio"],
        cpfCnpjSocioFormat: json["cpf_cnpj_socio_format"] == null
            ? null
            : json["cpf_cnpj_socio_format"],
        cpfCnpjSocioMascara: json["cpf_cnpj_socio_mascara"] == null
            ? null
            : json["cpf_cnpj_socio_mascara"],
        descricaoQualifSocio: json["descricao_qualif_socio"] == null
            ? null
            : json["descricao_qualif_socio"],
      );

  Map<String, dynamic> toJson() => {
        "Tipo_Vinculo": tipoVinculo == null ? null : tipoVinculo,
        "nome_socio": nomeSocio == null ? null : nomeSocio,
        "cpf_cnpj_socio": cpfCnpjSocio == null ? null : cpfCnpjSocio,
        "cpf_cnpj_socio_format":
            cpfCnpjSocioFormat == null ? null : cpfCnpjSocioFormat,
        "cpf_cnpj_socio_mascara":
            cpfCnpjSocioMascara == null ? null : cpfCnpjSocioMascara,
        "descricao_qualif_socio":
            descricaoQualifSocio == null ? null : descricaoQualifSocio,
      };
}
