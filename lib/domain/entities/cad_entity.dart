// To parse this JSON data, do
//
//     final cadEntity = cadEntityFromJson(jsonString);

import 'dart:convert';

List<CadEntity> cadEntityFromJson(String str) =>
    List<CadEntity>.from(json.decode(str).map((x) => CadEntity.fromJson(x)));

String cadEntityToJson(List<CadEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CadEntity {
  CadEntity({
    this.cnpj,
    this.nomeEmpresa,
    this.nomeFantasia,
    this.descrSitCad,
    this.dtSituacaoCadastral,
    this.dtInicioAtividade,
    this.codAtividadeEconomica,
    this.codPais,
    this.nomePais,
    this.cidadeExterior,
    this.descrLogradouro,
    this.endereco,
    this.numero,
    this.complemento,
    this.bairro,
    this.cep,
    this.uf,
    this.municipio,
    this.ddd1,
    this.telefone1,
    this.ddd2,
    this.telefone2,
    this.email,
    this.capitalSocial,
    this.porte,
    this.opcaoSimples,
    this.dtOpcaoSimples,
    this.opcaoMei,
    this.resultCode,
    this.resultDescription,
  });

  String cnpj;
  String nomeEmpresa;
  String nomeFantasia;
  String descrSitCad;
  String dtSituacaoCadastral;
  String dtInicioAtividade;
  String codAtividadeEconomica;
  String codPais;
  String nomePais;
  String cidadeExterior;
  String descrLogradouro;
  String endereco;
  String numero;
  String complemento;
  String bairro;
  String cep;
  String uf;
  String municipio;
  String ddd1;
  String telefone1;
  String ddd2;
  String telefone2;
  String email;
  String capitalSocial;
  String porte;
  String opcaoSimples;
  String dtOpcaoSimples;
  String opcaoMei;
  int resultCode;
  String resultDescription;

  factory CadEntity.fromJson(Map<String, dynamic> json) => CadEntity(
        cnpj: json["cnpj"] == null ? null : json["cnpj"],
        nomeEmpresa: json["nome_empresa"] == null ? null : json["nome_empresa"],
        nomeFantasia:
            json["nome_fantasia"] == null ? null : json["nome_fantasia"],
        descrSitCad:
            json["descr_sit_cad"] == null ? null : json["descr_sit_cad"],
        dtSituacaoCadastral: json["dt_situacao_cadastral"] == null
            ? null
            : json["dt_situacao_cadastral"],
        dtInicioAtividade: json["dt_inicio_atividade"] == null
            ? null
            : json["dt_inicio_atividade"],
        codAtividadeEconomica: json["cod_atividade_economica"] == null
            ? null
            : json["cod_atividade_economica"],
        codPais: json["cod_pais"] == null ? null : json["cod_pais"],
        nomePais: json["nome_pais"] == null ? null : json["nome_pais"],
        cidadeExterior:
            json["cidade_exterior"] == null ? null : json["cidade_exterior"],
        descrLogradouro:
            json["descr_logradouro"] == null ? null : json["descr_logradouro"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        numero: json["numero"] == null ? null : json["numero"],
        complemento: json["complemento"] == null ? null : json["complemento"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        cep: json["cep"] == null ? null : json["cep"],
        uf: json["uf"] == null ? null : json["uf"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        ddd1: json["ddd_1"] == null ? null : json["ddd_1"],
        telefone1: json["telefone_1"] == null ? null : json["telefone_1"],
        ddd2: json["ddd_2"] == null ? null : json["ddd_2"],
        telefone2: json["telefone_2"] == null ? null : json["telefone_2"],
        email: json["email"] == null ? null : json["email"],
        capitalSocial:
            json["capital_social"] == null ? null : json["capital_social"],
        porte: json["porte"] == null ? null : json["porte"],
        opcaoSimples:
            json["opcao_simples"] == null ? null : json["opcao_simples"],
        dtOpcaoSimples:
            json["dt_opcao_simples"] == null ? null : json["dt_opcao_simples"],
        opcaoMei: json["opcao_mei"] == null ? null : json["opcao_mei"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpj,
        "nome_empresa": nomeEmpresa == null ? null : nomeEmpresa,
        "nome_fantasia": nomeFantasia == null ? null : nomeFantasia,
        "descr_sit_cad": descrSitCad == null ? null : descrSitCad,
        "dt_situacao_cadastral":
            dtSituacaoCadastral == null ? null : dtSituacaoCadastral,
        "dt_inicio_atividade":
            dtInicioAtividade == null ? null : dtInicioAtividade,
        "cod_atividade_economica":
            codAtividadeEconomica == null ? null : codAtividadeEconomica,
        "cod_pais": codPais == null ? null : codPais,
        "nome_pais": nomePais == null ? null : nomePais,
        "cidade_exterior": cidadeExterior == null ? null : cidadeExterior,
        "descr_logradouro": descrLogradouro == null ? null : descrLogradouro,
        "endereco": endereco == null ? null : endereco,
        "numero": numero == null ? null : numero,
        "complemento": complemento == null ? null : complemento,
        "bairro": bairro == null ? null : bairro,
        "cep": cep == null ? null : cep,
        "uf": uf == null ? null : uf,
        "municipio": municipio == null ? null : municipio,
        "ddd_1": ddd1 == null ? null : ddd1,
        "telefone_1": telefone1 == null ? null : telefone1,
        "ddd_2": ddd2 == null ? null : ddd2,
        "telefone_2": telefone2 == null ? null : telefone2,
        "email": email == null ? null : email,
        "capital_social": capitalSocial == null ? null : capitalSocial,
        "porte": porte == null ? null : porte,
        "opcao_simples": opcaoSimples == null ? null : opcaoSimples,
        "dt_opcao_simples": dtOpcaoSimples == null ? null : dtOpcaoSimples,
        "opcao_mei": opcaoMei == null ? null : opcaoMei,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
