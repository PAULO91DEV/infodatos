// To parse this JSON data, do
//
//     final tseFiliacoesNameEntity = tseFiliacoesNameEntityFromJson(jsonString);

import 'dart:convert';

List<TseFiliacoesNameEntity> tseFiliacoesNameEntityFromJson(String str) =>
    List<TseFiliacoesNameEntity>.from(
        json.decode(str).map((x) => TseFiliacoesNameEntity.fromJson(x)));

String tseFiliacoesNameEntityToJson(List<TseFiliacoesNameEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TseFiliacoesNameEntity {
  TseFiliacoesNameEntity({
    this.dataExtracao,
    this.horaExtracao,
    this.numInscricao,
    this.nomeDoFiliado,
    this.siglaPartido,
    this.nomePartido,
    this.uf,
    this.codMunicipio,
    this.nomeMunicipio,
    this.zonaEleitoral,
    this.secaoEleitoral,
    this.dataFiliacao,
    this.situacaoRegistro,
    this.tipoRegistro,
    this.dataProcessamento,
    this.dataDesfiliacao,
    this.dataCancelamento,
    this.dataRegularizacao,
    this.motivoCancelamento,
    this.resultCode,
    this.resultDescription,
  });

  String dataExtracao;
  String horaExtracao;
  String numInscricao;
  String nomeDoFiliado;
  String siglaPartido;
  String nomePartido;
  String uf;
  String codMunicipio;
  String nomeMunicipio;
  String zonaEleitoral;
  String secaoEleitoral;
  String dataFiliacao;
  String situacaoRegistro;
  String tipoRegistro;
  String dataProcessamento;
  String dataDesfiliacao;
  String dataCancelamento;
  String dataRegularizacao;
  String motivoCancelamento;
  int resultCode;
  String resultDescription;

  factory TseFiliacoesNameEntity.fromJson(Map<String, dynamic> json) =>
      TseFiliacoesNameEntity(
        dataExtracao:
            json["data_extracao"] == null ? null : json["data_extracao"],
        horaExtracao:
            json["hora_extracao"] == null ? null : json["hora_extracao"],
        numInscricao:
            json["num_inscricao"] == null ? null : json["num_inscricao"],
        nomeDoFiliado:
            json["nome_do_filiado"] == null ? null : json["nome_do_filiado"],
        siglaPartido:
            json["sigla_partido"] == null ? null : json["sigla_partido"],
        nomePartido: json["nome_partido"] == null ? null : json["nome_partido"],
        uf: json["uf"] == null ? null : json["uf"],
        codMunicipio:
            json["cod_municipio"] == null ? null : json["cod_municipio"],
        nomeMunicipio:
            json["nome_municipio"] == null ? null : json["nome_municipio"],
        zonaEleitoral:
            json["zona_eleitoral"] == null ? null : json["zona_eleitoral"],
        secaoEleitoral:
            json["secao_eleitoral"] == null ? null : json["secao_eleitoral"],
        dataFiliacao:
            json["data_filiacao"] == null ? null : json["data_filiacao"],
        situacaoRegistro: json["situacao_registro"] == null
            ? null
            : json["situacao_registro"],
        tipoRegistro:
            json["tipo_registro"] == null ? null : json["tipo_registro"],
        dataProcessamento: json["data_processamento"] == null
            ? null
            : json["data_processamento"],
        dataDesfiliacao:
            json["data_desfiliacao"] == null ? null : json["data_desfiliacao"],
        dataCancelamento: json["data_cancelamento"] == null
            ? null
            : json["data_cancelamento"],
        dataRegularizacao: json["data_regularizacao"] == null
            ? null
            : json["data_regularizacao"],
        motivoCancelamento: json["motivo_cancelamento"] == null
            ? null
            : json["motivo_cancelamento"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "data_extracao": dataExtracao == null ? null : dataExtracao,
        "hora_extracao": horaExtracao == null ? null : horaExtracao,
        "num_inscricao": numInscricao == null ? null : numInscricao,
        "nome_do_filiado": nomeDoFiliado == null ? null : nomeDoFiliado,
        "sigla_partido": siglaPartido == null ? null : siglaPartido,
        "nome_partido": nomePartido == null ? null : nomePartido,
        "uf": uf == null ? null : uf,
        "cod_municipio": codMunicipio == null ? null : codMunicipio,
        "nome_municipio": nomeMunicipio == null ? null : nomeMunicipio,
        "zona_eleitoral": zonaEleitoral == null ? null : zonaEleitoral,
        "secao_eleitoral": secaoEleitoral == null ? null : secaoEleitoral,
        "data_filiacao": dataFiliacao == null ? null : dataFiliacao,
        "situacao_registro": situacaoRegistro == null ? null : situacaoRegistro,
        "tipo_registro": tipoRegistro == null ? null : tipoRegistro,
        "data_processamento":
            dataProcessamento == null ? null : dataProcessamento,
        "data_desfiliacao": dataDesfiliacao == null ? null : dataDesfiliacao,
        "data_cancelamento": dataCancelamento == null ? null : dataCancelamento,
        "data_regularizacao":
            dataRegularizacao == null ? null : dataRegularizacao,
        "motivo_cancelamento":
            motivoCancelamento == null ? null : motivoCancelamento,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
