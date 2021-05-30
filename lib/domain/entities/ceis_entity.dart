// To parse this JSON data, do
//
//     final ceisEntity = ceisEntityFromJson(jsonString);

import 'dart:convert';

List<CeisEntity> ceisEntityFromJson(String str) =>
    List<CeisEntity>.from(json.decode(str).map((x) => CeisEntity.fromJson(x)));

String ceisEntityToJson(List<CeisEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CeisEntity {
  CeisEntity({
    this.fonte,
    this.tipoPessoa,
    this.nomeRazaoSocial,
    this.cpfCnpj,
    this.ufOrgaoSancionador,
    this.numeroProcesso,
    this.tipoSancao,
    this.dtInicioSancao,
    this.dtFinalSancao,
    this.orgaoSancionador,
    this.origemInformacoes,
    this.dtOrigemInformacoes,
    this.fundamentacaoLegal,
    this.descricaoFundamentacaoLegal,
    this.dtTransitoJulgado,
    this.id,
    this.resultCode,
    this.resultDescription,
  });

  String fonte;
  String tipoPessoa;
  String nomeRazaoSocial;
  String cpfCnpj;
  String ufOrgaoSancionador;
  String numeroProcesso;
  String tipoSancao;
  String dtInicioSancao;
  String dtFinalSancao;
  String orgaoSancionador;
  String origemInformacoes;
  String dtOrigemInformacoes;
  String fundamentacaoLegal;
  String descricaoFundamentacaoLegal;
  String dtTransitoJulgado;
  String id;
  int resultCode;
  String resultDescription;

  factory CeisEntity.fromJson(Map<String, dynamic> json) => CeisEntity(
        fonte: json["fonte"] == null ? null : json["fonte"],
        tipoPessoa: json["tipo_pessoa"] == null ? null : json["tipo_pessoa"],
        nomeRazaoSocial: json["nome_razao_social"] == null
            ? null
            : json["nome_razao_social"],
        cpfCnpj: json["cpf_cnpj"] == null ? null : json["cpf_cnpj"],
        ufOrgaoSancionador: json["uf_orgao_sancionador"] == null
            ? null
            : json["uf_orgao_sancionador"],
        numeroProcesso:
            json["numero_processo"] == null ? null : json["numero_processo"],
        tipoSancao: json["tipo_sancao"] == null ? null : json["tipo_sancao"],
        dtInicioSancao:
            json["dt_inicio_sancao"] == null ? null : json["dt_inicio_sancao"],
        dtFinalSancao:
            json["dt_final_sancao"] == null ? null : json["dt_final_sancao"],
        orgaoSancionador: json["orgao_sancionador"] == null
            ? null
            : json["orgao_sancionador"],
        origemInformacoes: json["origem_informacoes"] == null
            ? null
            : json["origem_informacoes"],
        dtOrigemInformacoes: json["dt_origem_informacoes"] == null
            ? null
            : json["dt_origem_informacoes"],
        fundamentacaoLegal: json["fundamentacao_legal"] == null
            ? null
            : json["fundamentacao_legal"],
        descricaoFundamentacaoLegal:
            json["descricao_fundamentacao_legal"] == null
                ? null
                : json["descricao_fundamentacao_legal"],
        dtTransitoJulgado: json["dt_transito_julgado"] == null
            ? null
            : json["dt_transito_julgado"],
        id: json["id"] == null ? null : json["id"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "fonte": fonte == null ? null : fonte,
        "tipo_pessoa": tipoPessoa == null ? null : tipoPessoa,
        "nome_razao_social": nomeRazaoSocial == null ? null : nomeRazaoSocial,
        "cpf_cnpj": cpfCnpj == null ? null : cpfCnpj,
        "uf_orgao_sancionador":
            ufOrgaoSancionador == null ? null : ufOrgaoSancionador,
        "numero_processo": numeroProcesso == null ? null : numeroProcesso,
        "tipo_sancao": tipoSancao == null ? null : tipoSancao,
        "dt_inicio_sancao": dtInicioSancao == null ? null : dtInicioSancao,
        "dt_final_sancao": dtFinalSancao == null ? null : dtFinalSancao,
        "orgao_sancionador": orgaoSancionador == null ? null : orgaoSancionador,
        "origem_informacoes":
            origemInformacoes == null ? null : origemInformacoes,
        "dt_origem_informacoes":
            dtOrigemInformacoes == null ? null : dtOrigemInformacoes,
        "fundamentacao_legal":
            fundamentacaoLegal == null ? null : fundamentacaoLegal,
        "descricao_fundamentacao_legal": descricaoFundamentacaoLegal == null
            ? null
            : descricaoFundamentacaoLegal,
        "dt_transito_julgado":
            dtTransitoJulgado == null ? null : dtTransitoJulgado,
        "id": id == null ? null : id,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
