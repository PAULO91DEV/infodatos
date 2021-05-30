// To parse this JSON data, do
//
//     final personCpfEntity = personCpfEntityFromJson(jsonString);

import 'dart:convert';

PersonCpfEntity personCpfEntityFromJson(String str) =>
    PersonCpfEntity.fromJson(json.decode(str));

String personCpfEntityToJson(PersonCpfEntity data) =>
    json.encode(data.toJson());

class PersonCpfEntity {
  PersonCpfEntity({
    this.boInterpol,
    this.boOfac,
    this.boObito,
    this.noPessoa,
    this.noEscolaridade,
    this.noMae,
    this.noRacaCor,
    this.noSexo,
    this.noSigno,
    this.nrCnh,
    this.nrCpf,
    this.nrCpfMae,
    this.nrCpfPai,
    this.nrCrt,
    this.nrPis,
    this.nrRg,
    this.nrCbo,
    this.nrIdade,
    this.nrRenda,
    this.sgUfEmissorRg,
    this.dtNascimento,
    this.dsRendaPresumida,
    this.noOrgaoEmissorRg,
    this.noCategoriaCnh,
    this.dtEmissaoCnh,
    this.noEmail,
    this.noPai,
    this.nmCbo,
    this.noNacionalidade,
    this.dtNascimentoMae,
    this.dataConsulta,
    this.stgComprovanteEleitoral,
    this.stgComprovanteReceita,
    this.stgEnderecos,
    this.stgFilhos,
    this.stgIrmaos,
    this.stgParticipacaoSocietaria,
    this.stgTelefones,
    this.resultCode,
    this.resultDescription,
  });

  String boInterpol;
  String boOfac;
  String boObito;
  String noPessoa;
  String noEscolaridade;
  String noMae;
  String noRacaCor;
  String noSexo;
  String noSigno;
  String nrCnh;
  String nrCpf;
  String nrCpfMae;
  String nrCpfPai;
  String nrCrt;
  String nrPis;
  String nrRg;
  String nrCbo;
  String nrIdade;
  String nrRenda;
  String sgUfEmissorRg;
  String dtNascimento;
  String dsRendaPresumida;
  String noOrgaoEmissorRg;
  String noCategoriaCnh;
  String dtEmissaoCnh;
  String noEmail;
  String noPai;
  String nmCbo;
  String noNacionalidade;
  String dtNascimentoMae;
  String dataConsulta;
  List<StgComprovanteEleitoral> stgComprovanteEleitoral;
  List<StgComprovanteReceita> stgComprovanteReceita;
  List<StgEndereco> stgEnderecos;
  List<Stg> stgFilhos;
  List<Stg> stgIrmaos;
  List<StgParticipacaoSocietaria> stgParticipacaoSocietaria;
  List<StgTelefone> stgTelefones;
  int resultCode;
  String resultDescription;

  factory PersonCpfEntity.fromJson(Map<String, dynamic> json) =>
      PersonCpfEntity(
        boInterpol: json["boINTERPOL"] == null ? null : json["boINTERPOL"],
        boOfac: json["boOFAC"] == null ? null : json["boOFAC"],
        boObito: json["boObito"] == null ? null : json["boObito"],
        noPessoa: json["NOPessoa"] == null ? null : json["NOPessoa"],
        noEscolaridade:
            json["NOEscolaridade"] == null ? null : json["NOEscolaridade"],
        noMae: json["NOMae"] == null ? null : json["NOMae"],
        noRacaCor: json["NORacaCor"] == null ? null : json["NORacaCor"],
        noSexo: json["NOSexo"] == null ? null : json["NOSexo"],
        noSigno: json["NOSigno"] == null ? null : json["NOSigno"],
        nrCnh: json["NRCnh"] == null ? null : json["NRCnh"],
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
        nrCpfMae: json["NRCpfMae"] == null ? null : json["NRCpfMae"],
        nrCpfPai: json["NRCpfPai"] == null ? null : json["NRCpfPai"],
        nrCrt: json["NRCrt"] == null ? null : json["NRCrt"],
        nrPis: json["NRPis"] == null ? null : json["NRPis"],
        nrRg: json["NRRg"] == null ? null : json["NRRg"],
        nrCbo: json["nrCBO"] == null ? null : json["nrCBO"],
        nrIdade: json["nrIdade"] == null ? null : json["nrIdade"],
        nrRenda: json["nrRenda"] == null ? null : json["nrRenda"],
        sgUfEmissorRg:
            json["SGUfEmissorRg"] == null ? null : json["SGUfEmissorRg"],
        dtNascimento:
            json["DTNascimento"] == null ? null : json["DTNascimento"],
        dsRendaPresumida:
            json["dsRendaPresumida"] == null ? null : json["dsRendaPresumida"],
        noOrgaoEmissorRg:
            json["NOOrgaoEmissorRg"] == null ? null : json["NOOrgaoEmissorRg"],
        noCategoriaCnh:
            json["NOCategoriaCnh"] == null ? null : json["NOCategoriaCnh"],
        dtEmissaoCnh:
            json["DTEmissaoCnh"] == null ? null : json["DTEmissaoCnh"],
        noEmail: json["NOEmail"] == null ? null : json["NOEmail"],
        noPai: json["NOPai"] == null ? null : json["NOPai"],
        nmCbo: json["nmCBO"] == null ? null : json["nmCBO"],
        noNacionalidade:
            json["NONacionalidade"] == null ? null : json["NONacionalidade"],
        dtNascimentoMae:
            json["DTNascimentoMae"] == null ? null : json["DTNascimentoMae"],
        dataConsulta:
            json["data_consulta"] == null ? null : json["data_consulta"],
        stgComprovanteEleitoral: json["stgComprovanteEleitoral"] == null
            ? null
            : List<StgComprovanteEleitoral>.from(json["stgComprovanteEleitoral"]
                .map((x) => StgComprovanteEleitoral.fromJson(x))),
        stgComprovanteReceita: json["stgComprovanteReceita"] == null
            ? null
            : List<StgComprovanteReceita>.from(json["stgComprovanteReceita"]
                .map((x) => StgComprovanteReceita.fromJson(x))),
        stgEnderecos: json["stgEnderecos"] == null
            ? null
            : List<StgEndereco>.from(
                json["stgEnderecos"].map((x) => StgEndereco.fromJson(x))),
        stgFilhos: json["stgFilhos"] == null
            ? null
            : List<Stg>.from(json["stgFilhos"].map((x) => Stg.fromJson(x))),
        stgIrmaos: json["stgIrmaos"] == null
            ? null
            : List<Stg>.from(json["stgIrmaos"].map((x) => Stg.fromJson(x))),
        stgParticipacaoSocietaria: json["stgParticipacaoSocietaria"] == null
            ? null
            : List<StgParticipacaoSocietaria>.from(
                json["stgParticipacaoSocietaria"]
                    .map((x) => StgParticipacaoSocietaria.fromJson(x))),
        stgTelefones: json["stgTelefones"] == null
            ? null
            : List<StgTelefone>.from(
                json["stgTelefones"].map((x) => StgTelefone.fromJson(x))),
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  //get first => null;

  Map<String, dynamic> toJson() => {
        "boINTERPOL": boInterpol == null ? null : boInterpol,
        "boOFAC": boOfac == null ? null : boOfac,
        "boObito": boObito == null ? null : boObito,
        "NOPessoa": noPessoa == null ? null : noPessoa,
        "NOEscolaridade": noEscolaridade == null ? null : noEscolaridade,
        "NOMae": noMae == null ? null : noMae,
        "NORacaCor": noRacaCor == null ? null : noRacaCor,
        "NOSexo": noSexo == null ? null : noSexo,
        "NOSigno": noSigno == null ? null : noSigno,
        "NRCnh": nrCnh == null ? null : nrCnh,
        "NRCpf": nrCpf == null ? null : nrCpf,
        "NRCpfMae": nrCpfMae == null ? null : nrCpfMae,
        "NRCpfPai": nrCpfPai == null ? null : nrCpfPai,
        "NRCrt": nrCrt == null ? null : nrCrt,
        "NRPis": nrPis == null ? null : nrPis,
        "NRRg": nrRg == null ? null : nrRg,
        "nrCBO": nrCbo == null ? null : nrCbo,
        "nrIdade": nrIdade == null ? null : nrIdade,
        "nrRenda": nrRenda == null ? null : nrRenda,
        "SGUfEmissorRg": sgUfEmissorRg == null ? null : sgUfEmissorRg,
        "DTNascimento": dtNascimento == null ? null : dtNascimento,
        "dsRendaPresumida": dsRendaPresumida == null ? null : dsRendaPresumida,
        "NOOrgaoEmissorRg": noOrgaoEmissorRg == null ? null : noOrgaoEmissorRg,
        "NOCategoriaCnh": noCategoriaCnh == null ? null : noCategoriaCnh,
        "DTEmissaoCnh": dtEmissaoCnh == null ? null : dtEmissaoCnh,
        "NOEmail": noEmail == null ? null : noEmail,
        "NOPai": noPai == null ? null : noPai,
        "nmCBO": nmCbo == null ? null : nmCbo,
        "NONacionalidade": noNacionalidade == null ? null : noNacionalidade,
        "DTNascimentoMae": dtNascimentoMae == null ? null : dtNascimentoMae,
        "data_consulta": dataConsulta == null ? null : dataConsulta,
        "stgComprovanteEleitoral": stgComprovanteEleitoral == null
            ? null
            : List<dynamic>.from(
                stgComprovanteEleitoral.map((x) => x.toJson())),
        "stgComprovanteReceita": stgComprovanteReceita == null
            ? null
            : List<dynamic>.from(stgComprovanteReceita.map((x) => x.toJson())),
        "stgEnderecos": stgEnderecos == null
            ? null
            : List<dynamic>.from(stgEnderecos.map((x) => x.toJson())),
        "stgFilhos": stgFilhos == null
            ? null
            : List<dynamic>.from(stgFilhos.map((x) => x.toJson())),
        "stgIrmaos": stgIrmaos == null
            ? null
            : List<dynamic>.from(stgIrmaos.map((x) => x.toJson())),
        "stgParticipacaoSocietaria": stgParticipacaoSocietaria == null
            ? null
            : List<dynamic>.from(
                stgParticipacaoSocietaria.map((x) => x.toJson())),
        "stgTelefones": stgTelefones == null
            ? null
            : List<dynamic>.from(stgTelefones.map((x) => x.toJson())),
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgComprovanteEleitoral {
  StgComprovanteEleitoral({
    this.nrCpf,
    this.nrTituloEleitor,
    this.noPessoa,
    this.noSituacao,
    this.nrSecao,
    this.nrZona,
    this.noLocalVotacao,
    this.noLocalVotacaoEndereco,
    this.noLocalVotacaoMunicipio,
    this.sgLocalVotacaoUf,
    this.dtConsulta,
    this.cdStatus,
    this.noStatus,
    this.dhProcessamento,
    this.resultCode,
    this.resultDescription,
  });

  String nrCpf;
  String nrTituloEleitor;
  String noPessoa;
  String noSituacao;
  String nrSecao;
  String nrZona;
  String noLocalVotacao;
  String noLocalVotacaoEndereco;
  String noLocalVotacaoMunicipio;
  String sgLocalVotacaoUf;
  String dtConsulta;
  String cdStatus;
  String noStatus;
  String dhProcessamento;
  int resultCode;
  String resultDescription;

  factory StgComprovanteEleitoral.fromJson(Map<String, dynamic> json) =>
      StgComprovanteEleitoral(
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
        nrTituloEleitor:
            json["NRTituloEleitor"] == null ? null : json["NRTituloEleitor"],
        noPessoa: json["NOPessoa"] == null ? null : json["NOPessoa"],
        noSituacao: json["NOSituacao"] == null ? null : json["NOSituacao"],
        nrSecao: json["NRSecao"] == null ? null : json["NRSecao"],
        nrZona: json["NRZona"] == null ? null : json["NRZona"],
        noLocalVotacao:
            json["NOLocalVotacao"] == null ? null : json["NOLocalVotacao"],
        noLocalVotacaoEndereco: json["NOLocalVotacaoEndereco"] == null
            ? null
            : json["NOLocalVotacaoEndereco"],
        noLocalVotacaoMunicipio: json["NOLocalVotacaoMunicipio"] == null
            ? null
            : json["NOLocalVotacaoMunicipio"],
        sgLocalVotacaoUf:
            json["SGLocalVotacaoUF"] == null ? null : json["SGLocalVotacaoUF"],
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
        "NRCpf": nrCpf == null ? null : nrCpf,
        "NRTituloEleitor": nrTituloEleitor == null ? null : nrTituloEleitor,
        "NOPessoa": noPessoa == null ? null : noPessoa,
        "NOSituacao": noSituacao == null ? null : noSituacao,
        "NRSecao": nrSecao == null ? null : nrSecao,
        "NRZona": nrZona == null ? null : nrZona,
        "NOLocalVotacao": noLocalVotacao == null ? null : noLocalVotacao,
        "NOLocalVotacaoEndereco":
            noLocalVotacaoEndereco == null ? null : noLocalVotacaoEndereco,
        "NOLocalVotacaoMunicipio":
            noLocalVotacaoMunicipio == null ? null : noLocalVotacaoMunicipio,
        "SGLocalVotacaoUF": sgLocalVotacaoUf == null ? null : sgLocalVotacaoUf,
        "DTConsulta": dtConsulta == null ? null : dtConsulta,
        "CDStatus": cdStatus == null ? null : cdStatus,
        "NOStatus": noStatus == null ? null : noStatus,
        "DHProcessamento": dhProcessamento == null ? null : dhProcessamento,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgComprovanteReceita {
  StgComprovanteReceita({
    this.nrCpf,
    this.nrCpfReceita,
    this.noPessoa,
    this.cdSituacao,
    this.noSituacao,
    this.cdComprovante,
    this.dtConsulta,
    this.hrConsulta,
    this.cdStatus,
    this.noStatus,
    this.dhProcessamento,
    this.resultCode,
    this.resultDescription,
  });

  String nrCpf;
  String nrCpfReceita;
  String noPessoa;
  String cdSituacao;
  String noSituacao;
  String cdComprovante;
  String dtConsulta;
  String hrConsulta;
  String cdStatus;
  String noStatus;
  String dhProcessamento;
  int resultCode;
  String resultDescription;

  factory StgComprovanteReceita.fromJson(Map<String, dynamic> json) =>
      StgComprovanteReceita(
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
        nrCpfReceita:
            json["NRCpf_receita"] == null ? null : json["NRCpf_receita"],
        noPessoa: json["NOPessoa"] == null ? null : json["NOPessoa"],
        cdSituacao: json["CDSituacao"] == null ? null : json["CDSituacao"],
        noSituacao: json["NOSituacao"] == null ? null : json["NOSituacao"],
        cdComprovante:
            json["CDComprovante"] == null ? null : json["CDComprovante"],
        dtConsulta: json["DTConsulta"] == null ? null : json["DTConsulta"],
        hrConsulta: json["HRConsulta"] == null ? null : json["HRConsulta"],
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
        "NRCpf": nrCpf == null ? null : nrCpf,
        "NRCpf_receita": nrCpfReceita == null ? null : nrCpfReceita,
        "NOPessoa": noPessoa == null ? null : noPessoa,
        "CDSituacao": cdSituacao == null ? null : cdSituacao,
        "NOSituacao": noSituacao == null ? null : noSituacao,
        "CDComprovante": cdComprovante == null ? null : cdComprovante,
        "DTConsulta": dtConsulta == null ? null : dtConsulta,
        "HRConsulta": hrConsulta == null ? null : hrConsulta,
        "CDStatus": cdStatus == null ? null : cdStatus,
        "NOStatus": noStatus == null ? null : noStatus,
        "DHProcessamento": dhProcessamento == null ? null : dhProcessamento,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class StgEndereco {
  StgEndereco({
    this.nrCpf,
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

  String nrCpf;
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

  factory StgEndereco.fromJson(Map<String, dynamic> json) => StgEndereco(
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
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
        "NRCpf": nrCpf == null ? null : nrCpf,
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

class Stg {
  Stg({
    this.nrCpf,
    this.nrCpfFilho,
    this.noPessoa,
    this.resultCode,
    this.resultDescription,
    this.nrCpfIrmao,
  });

  String nrCpf;
  String nrCpfFilho;
  String noPessoa;
  int resultCode;
  String resultDescription;
  String nrCpfIrmao;

  factory Stg.fromJson(Map<String, dynamic> json) => Stg(
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
        nrCpfFilho: json["NRCpf_filho"] == null ? null : json["NRCpf_filho"],
        noPessoa: json["NOPessoa"] == null ? null : json["NOPessoa"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
        nrCpfIrmao: json["NRCpf_irmao"] == null ? null : json["NRCpf_irmao"],
      );

  Map<String, dynamic> toJson() => {
        "NRCpf": nrCpf == null ? null : nrCpf,
        "NRCpf_filho": nrCpfFilho == null ? null : nrCpfFilho,
        "NOPessoa": noPessoa == null ? null : noPessoa,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
        "NRCpf_irmao": nrCpfIrmao == null ? null : nrCpfIrmao,
      };
}

class StgParticipacaoSocietaria {
  StgParticipacaoSocietaria({
    this.nrCpf,
    this.nrCnpj,
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

  String nrCpf;
  String nrCnpj;
  String nrDocumentoSocio;
  String noSocio;
  String noQualificacaoSocio;
  String dtEntradaSociedade;
  String qtPercentualCapitalSocial;
  String ehCpf;
  String noRazaoSocial;
  int resultCode;
  String resultDescription;

  factory StgParticipacaoSocietaria.fromJson(Map<String, dynamic> json) =>
      StgParticipacaoSocietaria(
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
        nrCnpj: json["NRCnpj"] == null ? null : json["NRCnpj"],
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
        "NRCpf": nrCpf == null ? null : nrCpf,
        "NRCnpj": nrCnpj == null ? null : nrCnpj,
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

class StgTelefone {
  StgTelefone({
    this.nrCpf,
    this.nrDdd,
    this.nrTelefone,
    this.noCidade,
    this.sgUf,
    this.procon,
    this.tpFone,
    this.resultCode,
    this.resultDescription,
  });

  String nrCpf;
  String nrDdd;
  String nrTelefone;
  String noCidade;
  String sgUf;
  String procon;
  String tpFone;
  int resultCode;
  String resultDescription;

  factory StgTelefone.fromJson(Map<String, dynamic> json) => StgTelefone(
        nrCpf: json["NRCpf"] == null ? null : json["NRCpf"],
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
        "NRCpf": nrCpf == null ? null : nrCpf,
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
