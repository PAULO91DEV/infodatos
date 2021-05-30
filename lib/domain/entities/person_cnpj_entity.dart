// To parse this JSON data, do
//
//     final personCnpjEntity = personCnpjEntityFromJson(jsonString);

import 'dart:convert';

PersonCnpjEntity personCnpjEntityFromJson(String str) =>
    PersonCnpjEntity.fromJson(json.decode(str));

String personCnpjEntityToJson(PersonCnpjEntity data) =>
    json.encode(data.toJson());

class PersonCnpjEntity {
  PersonCnpjEntity({
    this.nrCnpj,
    this.noRazaoSocial,
    this.noFantasia,
    this.noNaturezaJuridica,
    this.noRamoAtividade,
    this.nrFuncinarios,
    this.nrInscricaoPat,
    this.noFaixaFuncionario,
    this.noPorte,
    this.nrCnae,
    this.noFaturamentoPresumido,
    this.dtFundacao,
    this.nrIndiceOperacional,
    this.dataConsulta,
    this.stgComprovanteReceitaPj,
    this.stgComprovanteSintegra,
    this.stgComprovanteSintegraOnline,
    this.stgComprovanteSuframaOnline,
    this.stgEmailPj,
    this.stgEnderecosPj,
    this.stgParticipacaoSocietariaPj,
    this.stgSociosPj,
    this.stgTelefonesPj,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String noRazaoSocial;
  String noFantasia;
  String noNaturezaJuridica;
  String noRamoAtividade;
  String nrFuncinarios;
  String nrInscricaoPat;
  String noFaixaFuncionario;
  String noPorte;
  String nrCnae;
  String noFaturamentoPresumido;
  String dtFundacao;
  String nrIndiceOperacional;
  String dataConsulta;
  List<StgComprovanteReceitaPj> stgComprovanteReceitaPj;
  List<StgComprovanteSintegra> stgComprovanteSintegra;
  List<StgComprovanteSintegraOnline> stgComprovanteSintegraOnline;
  List<StgComprovanteSuframaOnline> stgComprovanteSuframaOnline;
  List<StgEmailPj> stgEmailPj;
  List<StgEnderecosPj> stgEnderecosPj;
  List<StgPj> stgParticipacaoSocietariaPj;
  List<StgPj> stgSociosPj;
  List<StgTelefonesPj> stgTelefonesPj;
  int resultCode;
  String resultDescription;

  factory PersonCnpjEntity.fromJson(Map<String, dynamic> json) =>
      PersonCnpjEntity(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        noRazaoSocial:
            json["NORazaoSocial"] == null ? null : json["NORazaoSocial"],
        noFantasia: json["NOFantasia"] == null ? null : json["NOFantasia"],
        noNaturezaJuridica: json["NONaturezaJuridica"] == null
            ? null
            : json["NONaturezaJuridica"],
        noRamoAtividade:
            json["NORamoAtividade"] == null ? null : json["NORamoAtividade"],
        nrFuncinarios:
            json["NRFuncinarios"] == null ? null : json["NRFuncinarios"],
        nrInscricaoPat:
            json["NRInscricaoPAT"] == null ? null : json["NRInscricaoPAT"],
        noFaixaFuncionario: json["NOFaixaFuncionario"] == null
            ? null
            : json["NOFaixaFuncionario"],
        noPorte: json["NOPorte"] == null ? null : json["NOPorte"],
        nrCnae: json["NRCnae"] == null ? null : json["NRCnae"],
        noFaturamentoPresumido: json["NOFaturamentoPresumido"] == null
            ? null
            : json["NOFaturamentoPresumido"],
        dtFundacao: json["DTFundacao"] == null ? null : json["DTFundacao"],
        nrIndiceOperacional: json["NRIndiceOperacional"] == null
            ? null
            : json["NRIndiceOperacional"],
        dataConsulta:
            json["data_consulta"] == null ? null : json["data_consulta"],
        stgComprovanteReceitaPj: json["stgComprovanteReceitaPj"] == null
            ? null
            : List<StgComprovanteReceitaPj>.from(json["stgComprovanteReceitaPj"]
                .map((x) => StgComprovanteReceitaPj.fromJson(x))),
        stgComprovanteSintegra: json["stgComprovanteSintegra"] == null
            ? null
            : List<StgComprovanteSintegra>.from(json["stgComprovanteSintegra"]
                .map((x) => StgComprovanteSintegra.fromJson(x))),
        stgComprovanteSintegraOnline:
            json["stgComprovanteSintegraOnline"] == null
                ? null
                : List<StgComprovanteSintegraOnline>.from(
                    json["stgComprovanteSintegraOnline"]
                        .map((x) => StgComprovanteSintegraOnline.fromJson(x))),
        stgComprovanteSuframaOnline: json["stgComprovanteSuframaOnline"] == null
            ? null
            : List<StgComprovanteSuframaOnline>.from(
                json["stgComprovanteSuframaOnline"]
                    .map((x) => StgComprovanteSuframaOnline.fromJson(x))),
        stgEmailPj: json["stgEmailPj"] == null
            ? null
            : List<StgEmailPj>.from(
                json["stgEmailPj"].map((x) => StgEmailPj.fromJson(x))),
        stgEnderecosPj: json["stgEnderecosPj"] == null
            ? null
            : List<StgEnderecosPj>.from(
                json["stgEnderecosPj"].map((x) => StgEnderecosPj.fromJson(x))),
        stgParticipacaoSocietariaPj: json["stgParticipacaoSocietariaPj"] == null
            ? null
            : List<StgPj>.from(json["stgParticipacaoSocietariaPj"]
                .map((x) => StgPj.fromJson(x))),
        stgSociosPj: json["stgSociosPj"] == null
            ? null
            : List<StgPj>.from(
                json["stgSociosPj"].map((x) => StgPj.fromJson(x))),
        stgTelefonesPj: json["stgTelefonesPj"] == null
            ? null
            : List<StgTelefonesPj>.from(
                json["stgTelefonesPj"].map((x) => StgTelefonesPj.fromJson(x))),
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "NORazaoSocial": noRazaoSocial == null ? null : noRazaoSocial,
        "NOFantasia": noFantasia == null ? null : noFantasia,
        "NONaturezaJuridica":
            noNaturezaJuridica == null ? null : noNaturezaJuridica,
        "NORamoAtividade": noRamoAtividade == null ? null : noRamoAtividade,
        "NRFuncinarios": nrFuncinarios == null ? null : nrFuncinarios,
        "NRInscricaoPAT": nrInscricaoPat == null ? null : nrInscricaoPat,
        "NOFaixaFuncionario":
            noFaixaFuncionario == null ? null : noFaixaFuncionario,
        "NOPorte": noPorte == null ? null : noPorte,
        "NRCnae": nrCnae == null ? null : nrCnae,
        "NOFaturamentoPresumido":
            noFaturamentoPresumido == null ? null : noFaturamentoPresumido,
        "DTFundacao": dtFundacao == null ? null : dtFundacao,
        "NRIndiceOperacional":
            nrIndiceOperacional == null ? null : nrIndiceOperacional,
        "data_consulta": dataConsulta == null ? null : dataConsulta,
        "stgComprovanteReceitaPj": stgComprovanteReceitaPj == null
            ? null
            : List<dynamic>.from(
                stgComprovanteReceitaPj.map((x) => x.toJson())),
        "stgComprovanteSintegra": stgComprovanteSintegra == null
            ? null
            : List<dynamic>.from(stgComprovanteSintegra.map((x) => x.toJson())),
        "stgComprovanteSintegraOnline": stgComprovanteSintegraOnline == null
            ? null
            : List<dynamic>.from(
                stgComprovanteSintegraOnline.map((x) => x.toJson())),
        "stgComprovanteSuframaOnline": stgComprovanteSuframaOnline == null
            ? null
            : List<dynamic>.from(
                stgComprovanteSuframaOnline.map((x) => x.toJson())),
        "stgEmailPj": stgEmailPj == null
            ? null
            : List<dynamic>.from(stgEmailPj.map((x) => x.toJson())),
        "stgEnderecosPj": stgEnderecosPj == null
            ? null
            : List<dynamic>.from(stgEnderecosPj.map((x) => x.toJson())),
        "stgParticipacaoSocietariaPj": stgParticipacaoSocietariaPj == null
            ? null
            : List<dynamic>.from(
                stgParticipacaoSocietariaPj.map((x) => x.toJson())),
        "stgSociosPj": stgSociosPj == null
            ? null
            : List<dynamic>.from(stgSociosPj.map((x) => x.toJson())),
        "stgTelefonesPj": stgTelefonesPj == null
            ? null
            : List<dynamic>.from(stgTelefonesPj.map((x) => x.toJson())),
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgComprovanteReceitaPj {
  StgComprovanteReceitaPj({
    this.nrCnpj,
    this.noRazaoSocial,
    this.noFantasia,
    this.noLogradouro,
    this.nrLogradouro,
    this.noComplemento,
    this.noMunicipio,
    this.sgUf,
    this.nrCep,
    this.cdSituacao,
    this.noSituacao,
    this.noMotivoSituacaoCadastral,
    this.dtSituacao,
    this.cdNaturezaJuridica,
    this.noNaturezaJuridica,
    this.cdRamoAtividade,
    this.noRamoAtividade,
    this.cdSituacaoEspecial,
    this.noSituacaoEspecial,
    this.dtSituacaoEspecial,
    this.dtAbertura,
    this.noRamoAtividadeSecundario,
    this.dtConsulta,
    this.cdStatus,
    this.noStatus,
    this.dhProcessamento,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String noRazaoSocial;
  String noFantasia;
  String noLogradouro;
  String nrLogradouro;
  String noComplemento;
  String noMunicipio;
  String sgUf;
  String nrCep;
  String cdSituacao;
  String noSituacao;
  String noMotivoSituacaoCadastral;
  String dtSituacao;
  String cdNaturezaJuridica;
  String noNaturezaJuridica;
  String cdRamoAtividade;
  String noRamoAtividade;
  String cdSituacaoEspecial;
  String noSituacaoEspecial;
  String dtSituacaoEspecial;
  String dtAbertura;
  String noRamoAtividadeSecundario;
  String dtConsulta;
  String cdStatus;
  String noStatus;
  String dhProcessamento;
  int resultCode;
  String resultDescription;

  factory StgComprovanteReceitaPj.fromJson(Map<String, dynamic> json) =>
      StgComprovanteReceitaPj(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        noRazaoSocial:
            json["NORazaoSocial"] == null ? null : json["NORazaoSocial"],
        noFantasia: json["NOFantasia"] == null ? null : json["NOFantasia"],
        noLogradouro:
            json["NOLogradouro"] == null ? null : json["NOLogradouro"],
        nrLogradouro:
            json["NRLogradouro"] == null ? null : json["NRLogradouro"],
        noComplemento:
            json["NOComplemento"] == null ? null : json["NOComplemento"],
        noMunicipio: json["NOMunicipio"] == null ? null : json["NOMunicipio"],
        sgUf: json["SGUf"] == null ? null : json["SGUf"],
        nrCep: json["NRCep"] == null ? null : json["NRCep"],
        cdSituacao: json["CDSituacao"] == null ? null : json["CDSituacao"],
        noSituacao: json["NOSituacao"] == null ? null : json["NOSituacao"],
        noMotivoSituacaoCadastral: json["NOMotivoSituacaoCadastral"] == null
            ? null
            : json["NOMotivoSituacaoCadastral"],
        dtSituacao: json["DTSituacao"] == null ? null : json["DTSituacao"],
        cdNaturezaJuridica: json["CDNaturezaJuridica"] == null
            ? null
            : json["CDNaturezaJuridica"],
        noNaturezaJuridica: json["NONaturezaJuridica"] == null
            ? null
            : json["NONaturezaJuridica"],
        cdRamoAtividade:
            json["CDRamoAtividade"] == null ? null : json["CDRamoAtividade"],
        noRamoAtividade:
            json["NORamoAtividade"] == null ? null : json["NORamoAtividade"],
        cdSituacaoEspecial: json["CDSituacaoEspecial"] == null
            ? null
            : json["CDSituacaoEspecial"],
        noSituacaoEspecial: json["NOSituacaoEspecial"] == null
            ? null
            : json["NOSituacaoEspecial"],
        dtSituacaoEspecial: json["DTSituacaoEspecial"] == null
            ? null
            : json["DTSituacaoEspecial"],
        dtAbertura: json["DTAbertura"] == null ? null : json["DTAbertura"],
        noRamoAtividadeSecundario: json["NORamoAtividadeSecundario"] == null
            ? null
            : json["NORamoAtividadeSecundario"],
        dtConsulta: json["DTConsulta"] == null ? null : json["DTConsulta"],
        cdStatus: json["CDStatus"] == null ? null : json["CDStatus"],
        noStatus: json["NOStatus"] == null ? null : json["NOStatus"],
        dhProcessamento:
            json["DHProcessamento"] == null ? null : json["DHProcessamento"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "NORazaoSocial": noRazaoSocial == null ? null : noRazaoSocial,
        "NOFantasia": noFantasia == null ? null : noFantasia,
        "NOLogradouro": noLogradouro == null ? null : noLogradouro,
        "NRLogradouro": nrLogradouro == null ? null : nrLogradouro,
        "NOComplemento": noComplemento == null ? null : noComplemento,
        "NOMunicipio": noMunicipio == null ? null : noMunicipio,
        "SGUf": sgUf == null ? null : sgUf,
        "NRCep": nrCep == null ? null : nrCep,
        "CDSituacao": cdSituacao == null ? null : cdSituacao,
        "NOSituacao": noSituacao == null ? null : noSituacao,
        "NOMotivoSituacaoCadastral": noMotivoSituacaoCadastral == null
            ? null
            : noMotivoSituacaoCadastral,
        "DTSituacao": dtSituacao == null ? null : dtSituacao,
        "CDNaturezaJuridica":
            cdNaturezaJuridica == null ? null : cdNaturezaJuridica,
        "NONaturezaJuridica":
            noNaturezaJuridica == null ? null : noNaturezaJuridica,
        "CDRamoAtividade": cdRamoAtividade == null ? null : cdRamoAtividade,
        "NORamoAtividade": noRamoAtividade == null ? null : noRamoAtividade,
        "CDSituacaoEspecial":
            cdSituacaoEspecial == null ? null : cdSituacaoEspecial,
        "NOSituacaoEspecial":
            noSituacaoEspecial == null ? null : noSituacaoEspecial,
        "DTSituacaoEspecial":
            dtSituacaoEspecial == null ? null : dtSituacaoEspecial,
        "DTAbertura": dtAbertura == null ? null : dtAbertura,
        "NORamoAtividadeSecundario": noRamoAtividadeSecundario == null
            ? null
            : noRamoAtividadeSecundario,
        "DTConsulta": dtConsulta == null ? null : dtConsulta,
        "CDStatus": cdStatus == null ? null : cdStatus,
        "NOStatus": noStatus == null ? null : noStatus,
        "DHProcessamento": dhProcessamento == null ? null : dhProcessamento,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgComprovanteSintegra {
  StgComprovanteSintegra({
    this.nrCnpj,
    this.nrInscEstadual,
    this.dtInscEstadual,
    this.noRazaoSocial,
    this.noLogradouro,
    this.nrLogradouro,
    this.noComplemento,
    this.noBairro,
    this.noCidade,
    this.sgUf,
    this.nrCep,
    this.nrDdd,
    this.nrTelefone,
    this.noEndEletronico,
    this.noAtivEconomica,
    this.noSitCadastral,
    this.dtSitCadastral,
    this.noObservacoes,
    this.noRegimeApuracaoIcms,
    this.nrSuframa,
    this.noSituacaoSuframa,
    this.dtValidadeSuframa,
    this.dtConsulta,
    this.nrConsulta,
    this.cdStatus,
    this.noStatus,
    this.dhProcessamento,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String nrInscEstadual;
  String dtInscEstadual;
  String noRazaoSocial;
  String noLogradouro;
  String nrLogradouro;
  String noComplemento;
  String noBairro;
  String noCidade;
  String sgUf;
  String nrCep;
  String nrDdd;
  String nrTelefone;
  String noEndEletronico;
  String noAtivEconomica;
  String noSitCadastral;
  String dtSitCadastral;
  String noObservacoes;
  String noRegimeApuracaoIcms;
  String nrSuframa;
  String noSituacaoSuframa;
  String dtValidadeSuframa;
  String dtConsulta;
  String nrConsulta;
  String cdStatus;
  String noStatus;
  String dhProcessamento;
  int resultCode;
  String resultDescription;

  factory StgComprovanteSintegra.fromJson(Map<String, dynamic> json) =>
      StgComprovanteSintegra(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        nrInscEstadual:
            json["NRInscEstadual"] == null ? null : json["NRInscEstadual"],
        dtInscEstadual:
            json["DTInscEstadual"] == null ? null : json["DTInscEstadual"],
        noRazaoSocial:
            json["NORazaoSocial"] == null ? null : json["NORazaoSocial"],
        noLogradouro:
            json["NOLogradouro"] == null ? null : json["NOLogradouro"],
        nrLogradouro:
            json["NRLogradouro"] == null ? null : json["NRLogradouro"],
        noComplemento:
            json["NOComplemento"] == null ? null : json["NOComplemento"],
        noBairro: json["NOBairro"] == null ? null : json["NOBairro"],
        noCidade: json["NOCidade"] == null ? null : json["NOCidade"],
        sgUf: json["SGUf"] == null ? null : json["SGUf"],
        nrCep: json["NRCep"] == null ? null : json["NRCep"],
        nrDdd: json["NRDdd"] == null ? null : json["NRDdd"],
        nrTelefone: json["NRTelefone"] == null ? null : json["NRTelefone"],
        noEndEletronico:
            json["NOEndEletronico"] == null ? null : json["NOEndEletronico"],
        noAtivEconomica:
            json["NOAtivEconomica"] == null ? null : json["NOAtivEconomica"],
        noSitCadastral:
            json["NOSitCadastral"] == null ? null : json["NOSitCadastral"],
        dtSitCadastral:
            json["DTSitCadastral"] == null ? null : json["DTSitCadastral"],
        noObservacoes:
            json["NOObservacoes"] == null ? null : json["NOObservacoes"],
        noRegimeApuracaoIcms: json["NORegimeApuracaoIcms"] == null
            ? null
            : json["NORegimeApuracaoIcms"],
        nrSuframa: json["NRSuframa"] == null ? null : json["NRSuframa"],
        noSituacaoSuframa: json["NOSituacaoSuframa"] == null
            ? null
            : json["NOSituacaoSuframa"],
        dtValidadeSuframa: json["DTValidadeSuframa"] == null
            ? null
            : json["DTValidadeSuframa"],
        dtConsulta: json["DTConsulta"] == null ? null : json["DTConsulta"],
        nrConsulta: json["NRConsulta"] == null ? null : json["NRConsulta"],
        cdStatus: json["CDStatus"] == null ? null : json["CDStatus"],
        noStatus: json["NOStatus"] == null ? null : json["NOStatus"],
        dhProcessamento:
            json["DHProcessamento"] == null ? null : json["DHProcessamento"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "NRInscEstadual": nrInscEstadual == null ? null : nrInscEstadual,
        "DTInscEstadual": dtInscEstadual == null ? null : dtInscEstadual,
        "NORazaoSocial": noRazaoSocial == null ? null : noRazaoSocial,
        "NOLogradouro": noLogradouro == null ? null : noLogradouro,
        "NRLogradouro": nrLogradouro == null ? null : nrLogradouro,
        "NOComplemento": noComplemento == null ? null : noComplemento,
        "NOBairro": noBairro == null ? null : noBairro,
        "NOCidade": noCidade == null ? null : noCidade,
        "SGUf": sgUf == null ? null : sgUf,
        "NRCep": nrCep == null ? null : nrCep,
        "NRDdd": nrDdd == null ? null : nrDdd,
        "NRTelefone": nrTelefone == null ? null : nrTelefone,
        "NOEndEletronico": noEndEletronico == null ? null : noEndEletronico,
        "NOAtivEconomica": noAtivEconomica == null ? null : noAtivEconomica,
        "NOSitCadastral": noSitCadastral == null ? null : noSitCadastral,
        "DTSitCadastral": dtSitCadastral == null ? null : dtSitCadastral,
        "NOObservacoes": noObservacoes == null ? null : noObservacoes,
        "NORegimeApuracaoIcms":
            noRegimeApuracaoIcms == null ? null : noRegimeApuracaoIcms,
        "NRSuframa": nrSuframa == null ? null : nrSuframa,
        "NOSituacaoSuframa":
            noSituacaoSuframa == null ? null : noSituacaoSuframa,
        "DTValidadeSuframa":
            dtValidadeSuframa == null ? null : dtValidadeSuframa,
        "DTConsulta": dtConsulta == null ? null : dtConsulta,
        "NRConsulta": nrConsulta == null ? null : nrConsulta,
        "CDStatus": cdStatus == null ? null : cdStatus,
        "NOStatus": noStatus == null ? null : noStatus,
        "DHProcessamento": dhProcessamento == null ? null : dhProcessamento,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgComprovanteSintegraOnline {
  StgComprovanteSintegraOnline({
    this.nrCnpj,
    this.sucesso,
    this.cnpj,
    this.inscricaoEstadual,
    this.inscricoesEstaduais,
    this.razaoSocial,
    this.nomeFantasia,
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.cep,
    this.cidade,
    this.estado,
    this.telefone,
    this.enderecoEletronico,
    this.observacao,
    this.atividadeEconomica,
    this.cnae,
    this.cae,
    this.dataCredenciamentoNfe,
    this.obrigatoriedadeNfe,
    this.dataInicioObrigatoriedadeNfe,
    this.usuarioPed,
    this.dataPed,
    this.credenciamentoNfe,
    this.superSimples,
    this.regimeApuracao,
    this.credenciamento,
    this.regimePagamento,
    this.delegaciaFazendaria,
    this.naturezaJuridica,
    this.motivoInclusao,
    this.dataBaixa,
    this.motivoBaixa,
    this.situacaoCadastral,
    this.dataSituacaoCadastral,
    this.dataInscricaoEstadual,
    this.dataConsulta,
    this.numeroConsulta,
    this.erro,
    this.fullHtml,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String sucesso;
  String cnpj;
  String inscricaoEstadual;
  String inscricoesEstaduais;
  String razaoSocial;
  String nomeFantasia;
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String cep;
  String cidade;
  String estado;
  String telefone;
  String enderecoEletronico;
  String observacao;
  String atividadeEconomica;
  String cnae;
  String cae;
  String dataCredenciamentoNfe;
  String obrigatoriedadeNfe;
  String dataInicioObrigatoriedadeNfe;
  String usuarioPed;
  String dataPed;
  String credenciamentoNfe;
  String superSimples;
  String regimeApuracao;
  String credenciamento;
  String regimePagamento;
  String delegaciaFazendaria;
  String naturezaJuridica;
  String motivoInclusao;
  String dataBaixa;
  String motivoBaixa;
  String situacaoCadastral;
  String dataSituacaoCadastral;
  String dataInscricaoEstadual;
  String dataConsulta;
  String numeroConsulta;
  String erro;
  String fullHtml;
  int resultCode;
  String resultDescription;

  factory StgComprovanteSintegraOnline.fromJson(Map<String, dynamic> json) =>
      StgComprovanteSintegraOnline(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        sucesso: json["Sucesso"] == null ? null : json["Sucesso"],
        cnpj: json["CNPJ"] == null ? null : json["CNPJ"],
        inscricaoEstadual: json["InscricaoEstadual"] == null
            ? null
            : json["InscricaoEstadual"],
        inscricoesEstaduais: json["InscricoesEstaduais"] == null
            ? null
            : json["InscricoesEstaduais"],
        razaoSocial: json["RazaoSocial"] == null ? null : json["RazaoSocial"],
        nomeFantasia:
            json["NomeFantasia"] == null ? null : json["NomeFantasia"],
        logradouro: json["Logradouro"] == null ? null : json["Logradouro"],
        numero: json["Numero"] == null ? null : json["Numero"],
        complemento: json["Complemento"] == null ? null : json["Complemento"],
        bairro: json["Bairro"] == null ? null : json["Bairro"],
        cep: json["CEP"] == null ? null : json["CEP"],
        cidade: json["Cidade"] == null ? null : json["Cidade"],
        estado: json["Estado"] == null ? null : json["Estado"],
        telefone: json["Telefone"] == null ? null : json["Telefone"],
        enderecoEletronico: json["EnderecoEletronico"] == null
            ? null
            : json["EnderecoEletronico"],
        observacao: json["Observacao"] == null ? null : json["Observacao"],
        atividadeEconomica: json["AtividadeEconomica"] == null
            ? null
            : json["AtividadeEconomica"],
        cnae: json["CNAE"] == null ? null : json["CNAE"],
        cae: json["CAE"] == null ? null : json["CAE"],
        dataCredenciamentoNfe: json["DataCredenciamentoNFE"] == null
            ? null
            : json["DataCredenciamentoNFE"],
        obrigatoriedadeNfe: json["ObrigatoriedadeNFE"] == null
            ? null
            : json["ObrigatoriedadeNFE"],
        dataInicioObrigatoriedadeNfe:
            json["DataInicioObrigatoriedadeNFE"] == null
                ? null
                : json["DataInicioObrigatoriedadeNFE"],
        usuarioPed: json["UsuarioPed"] == null ? null : json["UsuarioPed"],
        dataPed: json["DataPed"] == null ? null : json["DataPed"],
        credenciamentoNfe: json["CredenciamentoNFE"] == null
            ? null
            : json["CredenciamentoNFE"],
        superSimples:
            json["SuperSimples"] == null ? null : json["SuperSimples"],
        regimeApuracao:
            json["RegimeApuracao"] == null ? null : json["RegimeApuracao"],
        credenciamento:
            json["Credenciamento"] == null ? null : json["Credenciamento"],
        regimePagamento:
            json["RegimePagamento"] == null ? null : json["RegimePagamento"],
        delegaciaFazendaria: json["DelegaciaFazendaria"] == null
            ? null
            : json["DelegaciaFazendaria"],
        naturezaJuridica:
            json["NaturezaJuridica"] == null ? null : json["NaturezaJuridica"],
        motivoInclusao:
            json["MotivoInclusao"] == null ? null : json["MotivoInclusao"],
        dataBaixa: json["DataBaixa"] == null ? null : json["DataBaixa"],
        motivoBaixa: json["MotivoBaixa"] == null ? null : json["MotivoBaixa"],
        situacaoCadastral: json["SituacaoCadastral"] == null
            ? null
            : json["SituacaoCadastral"],
        dataSituacaoCadastral: json["DataSituacaoCadastral"] == null
            ? null
            : json["DataSituacaoCadastral"],
        dataInscricaoEstadual: json["DataInscricaoEstadual"] == null
            ? null
            : json["DataInscricaoEstadual"],
        dataConsulta:
            json["DataConsulta"] == null ? null : json["DataConsulta"],
        numeroConsulta:
            json["NumeroConsulta"] == null ? null : json["NumeroConsulta"],
        erro: json["Erro"] == null ? null : json["Erro"],
        fullHtml: json["FullHTML"] == null ? null : json["FullHTML"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "Sucesso": sucesso == null ? null : sucesso,
        "CNPJ": cnpj == null ? null : cnpj,
        "InscricaoEstadual":
            inscricaoEstadual == null ? null : inscricaoEstadual,
        "InscricoesEstaduais":
            inscricoesEstaduais == null ? null : inscricoesEstaduais,
        "RazaoSocial": razaoSocial == null ? null : razaoSocial,
        "NomeFantasia": nomeFantasia == null ? null : nomeFantasia,
        "Logradouro": logradouro == null ? null : logradouro,
        "Numero": numero == null ? null : numero,
        "Complemento": complemento == null ? null : complemento,
        "Bairro": bairro == null ? null : bairro,
        "CEP": cep == null ? null : cep,
        "Cidade": cidade == null ? null : cidade,
        "Estado": estado == null ? null : estado,
        "Telefone": telefone == null ? null : telefone,
        "EnderecoEletronico":
            enderecoEletronico == null ? null : enderecoEletronico,
        "Observacao": observacao == null ? null : observacao,
        "AtividadeEconomica":
            atividadeEconomica == null ? null : atividadeEconomica,
        "CNAE": cnae == null ? null : cnae,
        "CAE": cae == null ? null : cae,
        "DataCredenciamentoNFE":
            dataCredenciamentoNfe == null ? null : dataCredenciamentoNfe,
        "ObrigatoriedadeNFE":
            obrigatoriedadeNfe == null ? null : obrigatoriedadeNfe,
        "DataInicioObrigatoriedadeNFE": dataInicioObrigatoriedadeNfe == null
            ? null
            : dataInicioObrigatoriedadeNfe,
        "UsuarioPed": usuarioPed == null ? null : usuarioPed,
        "DataPed": dataPed == null ? null : dataPed,
        "CredenciamentoNFE":
            credenciamentoNfe == null ? null : credenciamentoNfe,
        "SuperSimples": superSimples == null ? null : superSimples,
        "RegimeApuracao": regimeApuracao == null ? null : regimeApuracao,
        "Credenciamento": credenciamento == null ? null : credenciamento,
        "RegimePagamento": regimePagamento == null ? null : regimePagamento,
        "DelegaciaFazendaria":
            delegaciaFazendaria == null ? null : delegaciaFazendaria,
        "NaturezaJuridica": naturezaJuridica == null ? null : naturezaJuridica,
        "MotivoInclusao": motivoInclusao == null ? null : motivoInclusao,
        "DataBaixa": dataBaixa == null ? null : dataBaixa,
        "MotivoBaixa": motivoBaixa == null ? null : motivoBaixa,
        "SituacaoCadastral":
            situacaoCadastral == null ? null : situacaoCadastral,
        "DataSituacaoCadastral":
            dataSituacaoCadastral == null ? null : dataSituacaoCadastral,
        "DataInscricaoEstadual":
            dataInscricaoEstadual == null ? null : dataInscricaoEstadual,
        "DataConsulta": dataConsulta == null ? null : dataConsulta,
        "NumeroConsulta": numeroConsulta == null ? null : numeroConsulta,
        "Erro": erro == null ? null : erro,
        "FullHTML": fullHtml == null ? null : fullHtml,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgComprovanteSuframaOnline {
  StgComprovanteSuframaOnline({
    this.nrCnpj,
    this.sucesso,
    this.cnpj,
    this.inscricaoEstadual,
    this.inscricaoSuframa,
    this.inscricoesSuframa,
    this.razaoSocial,
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.cep,
    this.cidade,
    this.estado,
    this.telefone,
    this.enderecoEletronico,
    this.atividadeEconomica,
    this.tipoIncentivo,
    this.situacaoCadastral,
    this.dataValidade,
    this.isentaTsa,
    this.dataInscricao,
    this.dataConsulta,
    this.erro,
    this.fullHtml,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String sucesso;
  String cnpj;
  String inscricaoEstadual;
  String inscricaoSuframa;
  String inscricoesSuframa;
  String razaoSocial;
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String cep;
  String cidade;
  String estado;
  String telefone;
  String enderecoEletronico;
  String atividadeEconomica;
  String tipoIncentivo;
  String situacaoCadastral;
  String dataValidade;
  String isentaTsa;
  String dataInscricao;
  String dataConsulta;
  String erro;
  String fullHtml;
  int resultCode;
  String resultDescription;

  factory StgComprovanteSuframaOnline.fromJson(Map<String, dynamic> json) =>
      StgComprovanteSuframaOnline(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        sucesso: json["Sucesso"] == null ? null : json["Sucesso"],
        cnpj: json["CNPJ"] == null ? null : json["CNPJ"],
        inscricaoEstadual: json["InscricaoEstadual"] == null
            ? null
            : json["InscricaoEstadual"],
        inscricaoSuframa:
            json["InscricaoSuframa"] == null ? null : json["InscricaoSuframa"],
        inscricoesSuframa: json["InscricoesSuframa"] == null
            ? null
            : json["InscricoesSuframa"],
        razaoSocial: json["RazaoSocial"] == null ? null : json["RazaoSocial"],
        logradouro: json["Logradouro"] == null ? null : json["Logradouro"],
        numero: json["Numero"] == null ? null : json["Numero"],
        complemento: json["Complemento"] == null ? null : json["Complemento"],
        bairro: json["Bairro"] == null ? null : json["Bairro"],
        cep: json["CEP"] == null ? null : json["CEP"],
        cidade: json["Cidade"] == null ? null : json["Cidade"],
        estado: json["Estado"] == null ? null : json["Estado"],
        telefone: json["Telefone"] == null ? null : json["Telefone"],
        enderecoEletronico: json["EnderecoEletronico"] == null
            ? null
            : json["EnderecoEletronico"],
        atividadeEconomica: json["AtividadeEconomica"] == null
            ? null
            : json["AtividadeEconomica"],
        tipoIncentivo:
            json["TipoIncentivo"] == null ? null : json["TipoIncentivo"],
        situacaoCadastral: json["SituacaoCadastral"] == null
            ? null
            : json["SituacaoCadastral"],
        dataValidade:
            json["DataValidade"] == null ? null : json["DataValidade"],
        isentaTsa: json["IsentaTSA"] == null ? null : json["IsentaTSA"],
        dataInscricao:
            json["DataInscricao"] == null ? null : json["DataInscricao"],
        dataConsulta:
            json["DataConsulta"] == null ? null : json["DataConsulta"],
        erro: json["Erro"] == null ? null : json["Erro"],
        fullHtml: json["FullHTML"] == null ? null : json["FullHTML"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "Sucesso": sucesso == null ? null : sucesso,
        "CNPJ": cnpj == null ? null : cnpj,
        "InscricaoEstadual":
            inscricaoEstadual == null ? null : inscricaoEstadual,
        "InscricaoSuframa": inscricaoSuframa == null ? null : inscricaoSuframa,
        "InscricoesSuframa":
            inscricoesSuframa == null ? null : inscricoesSuframa,
        "RazaoSocial": razaoSocial == null ? null : razaoSocial,
        "Logradouro": logradouro == null ? null : logradouro,
        "Numero": numero == null ? null : numero,
        "Complemento": complemento == null ? null : complemento,
        "Bairro": bairro == null ? null : bairro,
        "CEP": cep == null ? null : cep,
        "Cidade": cidade == null ? null : cidade,
        "Estado": estado == null ? null : estado,
        "Telefone": telefone == null ? null : telefone,
        "EnderecoEletronico":
            enderecoEletronico == null ? null : enderecoEletronico,
        "AtividadeEconomica":
            atividadeEconomica == null ? null : atividadeEconomica,
        "TipoIncentivo": tipoIncentivo == null ? null : tipoIncentivo,
        "SituacaoCadastral":
            situacaoCadastral == null ? null : situacaoCadastral,
        "DataValidade": dataValidade == null ? null : dataValidade,
        "IsentaTSA": isentaTsa == null ? null : isentaTsa,
        "DataInscricao": dataInscricao == null ? null : dataInscricao,
        "DataConsulta": dataConsulta == null ? null : dataConsulta,
        "Erro": erro == null ? null : erro,
        "FullHTML": fullHtml == null ? null : fullHtml,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgEmailPj {
  StgEmailPj({
    this.nrCnpj,
    this.email,
    this.tpEmail,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String email;
  String tpEmail;
  int resultCode;
  String resultDescription;

  factory StgEmailPj.fromJson(Map<String, dynamic> json) => StgEmailPj(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        email: json["email"] == null ? null : json["email"],
        tpEmail: json["tpEmail"] == null ? null : json["tpEmail"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "email": email == null ? null : email,
        "tpEmail": tpEmail == null ? null : tpEmail,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgEnderecosPj {
  StgEnderecosPj({
    this.nrCnpj,
    this.noLogradouro,
    this.nrLogradouro,
    this.noComplemento,
    this.noBairro,
    this.noCidade,
    this.sgUf,
    this.nrCep,
    this.nrCaixaPostal,
    this.cdIbgeMunicipio,
    this.cdIbgeUf,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String noLogradouro;
  String nrLogradouro;
  String noComplemento;
  String noBairro;
  String noCidade;
  String sgUf;
  String nrCep;
  String nrCaixaPostal;
  String cdIbgeMunicipio;
  String cdIbgeUf;
  int resultCode;
  String resultDescription;

  factory StgEnderecosPj.fromJson(Map<String, dynamic> json) => StgEnderecosPj(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        noLogradouro:
            json["NOLogradouro"] == null ? null : json["NOLogradouro"],
        nrLogradouro:
            json["NRLogradouro"] == null ? null : json["NRLogradouro"],
        noComplemento:
            json["NOComplemento"] == null ? null : json["NOComplemento"],
        noBairro: json["NOBairro"] == null ? null : json["NOBairro"],
        noCidade: json["NOCidade"] == null ? null : json["NOCidade"],
        sgUf: json["SGUf"] == null ? null : json["SGUf"],
        nrCep: json["NRCep"] == null ? null : json["NRCep"],
        nrCaixaPostal:
            json["NRCaixaPostal"] == null ? null : json["NRCaixaPostal"],
        cdIbgeMunicipio:
            json["CDIbgeMunicipio"] == null ? null : json["CDIbgeMunicipio"],
        cdIbgeUf: json["CDIbgeUf"] == null ? null : json["CDIbgeUf"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "NOLogradouro": noLogradouro == null ? null : noLogradouro,
        "NRLogradouro": nrLogradouro == null ? null : nrLogradouro,
        "NOComplemento": noComplemento == null ? null : noComplemento,
        "NOBairro": noBairro == null ? null : noBairro,
        "NOCidade": noCidade == null ? null : noCidade,
        "SGUf": sgUf == null ? null : sgUf,
        "NRCep": nrCep == null ? null : nrCep,
        "NRCaixaPostal": nrCaixaPostal == null ? null : nrCaixaPostal,
        "CDIbgeMunicipio": cdIbgeMunicipio == null ? null : cdIbgeMunicipio,
        "CDIbgeUf": cdIbgeUf == null ? null : cdIbgeUf,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgPj {
  StgPj({
    this.nrCnpj,
    this.nrCpf,
    this.nrDocumentoSocio,
    this.noSocio,
    this.noQualificacaoSocio,
    this.dtEntradaSociedade,
    this.qtPercentualCapitalSocial,
    this.ehCpf,
    this.noRazaoSocial,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String nrCpf;
  String nrDocumentoSocio;
  String noSocio;
  String noQualificacaoSocio;
  String dtEntradaSociedade;
  String qtPercentualCapitalSocial;
  String ehCpf;
  String noRazaoSocial;
  int resultCode;
  String resultDescription;

  factory StgPj.fromJson(Map<String, dynamic> json) => StgPj(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
        nrDocumentoSocio:
            json["NRDocumentoSocio"] == null ? null : json["NRDocumentoSocio"],
        noSocio: json["NOSocio"] == null ? null : json["NOSocio"],
        noQualificacaoSocio: json["NOQualificacaoSocio"] == null
            ? null
            : json["NOQualificacaoSocio"],
        dtEntradaSociedade: json["DTEntradaSociedade"] == null
            ? null
            : json["DTEntradaSociedade"],
        qtPercentualCapitalSocial: json["QTPercentualCapitalSocial"] == null
            ? null
            : json["QTPercentualCapitalSocial"],
        ehCpf: json["ehCpf"] == null ? null : json["ehCpf"],
        noRazaoSocial:
            json["NORazaoSocial"] == null ? null : json["NORazaoSocial"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "NRCpf": nrCpf == null ? null : nrCpf,
        "NRDocumentoSocio": nrDocumentoSocio == null ? null : nrDocumentoSocio,
        "NOSocio": noSocio == null ? null : noSocio,
        "NOQualificacaoSocio":
            noQualificacaoSocio == null ? null : noQualificacaoSocio,
        "DTEntradaSociedade":
            dtEntradaSociedade == null ? null : dtEntradaSociedade,
        "QTPercentualCapitalSocial": qtPercentualCapitalSocial == null
            ? null
            : qtPercentualCapitalSocial,
        "ehCpf": ehCpf == null ? null : ehCpf,
        "NORazaoSocial": noRazaoSocial == null ? null : noRazaoSocial,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgTelefonesPj {
  StgTelefonesPj({
    this.nrCnpj,
    this.nrDdd,
    this.nrTelefone,
    this.noCidade,
    this.sgUf,
    this.procon,
    this.tpFone,
    this.resultCode,
    this.resultDescription,
  });

  String nrCnpj;
  String nrDdd;
  String nrTelefone;
  String noCidade;
  String sgUf;
  String procon;
  String tpFone;
  int resultCode;
  String resultDescription;

  factory StgTelefonesPj.fromJson(Map<String, dynamic> json) => StgTelefonesPj(
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
        nrDdd: json["NRDdd"] == null ? null : json["NRDdd"],
        nrTelefone: json["NRTelefone"] == null ? null : json["NRTelefone"],
        noCidade: json["NOCidade"] == null ? null : json["NOCidade"],
        sgUf: json["SGUf"] == null ? null : json["SGUf"],
        procon: json["procon"] == null ? null : json["procon"],
        tpFone: json["TPFone"] == null ? null : json["TPFone"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
        "NRDdd": nrDdd == null ? null : nrDdd,
        "NRTelefone": nrTelefone == null ? null : nrTelefone,
        "NOCidade": noCidade == null ? null : noCidade,
        "SGUf": sgUf == null ? null : sgUf,
        "procon": procon == null ? null : procon,
        "TPFone": tpFone == null ? null : tpFone,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
