// To parse this JSON data, do
//
//     final serasaCnpjEntity = serasaCnpjEntityFromJson(jsonString);

import 'dart:convert';

List<SerasaCnpjEntity> serasaCnpjEntityFromJson(String str) =>
    List<SerasaCnpjEntity>.from(
        json.decode(str).map((x) => SerasaCnpjEntity.fromJson(x)));

String serasaCnpjEntityToJson(List<SerasaCnpjEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SerasaCnpjEntity {
  SerasaCnpjEntity({
    this.cnpj,
    this.cdtran,
    this.cdopcao,
    this.compacta,
    this.tipots,
    this.nomets,
    this.moeda,
    this.tpstring,
    this.indcusto,
    this.ccusto,
    this.qdsoc,
    this.idioma,
    this.tipoconc,
    this.riskscoring,
    this.autorizador,
    this.segmento,
    this.segmento2,
    this.segmento3,
    this.segmento4,
    this.segmento5,
    this.areaReservada,
    this.modelo,
    this.gerencie,
    this.qtdeDias,
    this.perfil,
    this.grupoEmail,
    this.referencia,
    this.areaReservada1,
    this.areaReservada2,
    this.verificaTitulo,
    this.filialSac,
    this.cedente,
    this.filialCed,
    this.duplicata,
    this.vencimento,
    this.areaReservada3,
    this.indAlertscoring,
    this.indPerfilGerencie,
    this.nomeConsPerson,
    this.indFaturamentoPresumido,
    this.indFaturamentoRiskscoring,
    this.indLimitePj,
    this.indCollection,
    this.areaReservada4,
    this.areaReservada5,
    this.indSoftwa,
    this.cnpjSoftwa,
    this.indfeatRgc,
    this.indRiskAtac,
    this.areaReservada6,
    this.querAnotacaoSpc,
    this.querRegConsSpc,
    this.iMdFaturPresu,
    this.iNovoQs,
    this.iQuerPerfilFin,
    this.querIrm,
    this.querRksetor,
    this.iMdRksetor,
    this.iQuerGastoest,
    this.iMdGastoest,
    this.iQuerIdentpj,
    this.iMdIdentpj,
    this.iVisaoIdpj,
    this.areaReservada7,
    this.iQuerAnoconspc,
    this.iQuerEndfone,
    this.areaReservada8,
    this.iQuerSitfisica,
    this.iQuerIndpagamX,
    this.iModpagamX,
    this.iQuerSpsocios,
    this.iQuerComboSetor,
    this.iQuerAlertEmp,
    this.iQuerAlertSoc,
    this.areaReservada9,
    this.iQuerVendascart,
    this.iQuerIndRcdiv,
    this.areaReservada10,
    this.iQuerNovoIrm,
    this.iQuerAncospcsoc,
    this.areaReservada11,
    this.iQuerCombo6X,
    this.iQuerPosPjX,
    this.areaReservada12,
    this.iQuerMosaicX,
    this.iQuerOrgpubX,
    this.areaReservada13,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cdsitrf,
    this.dssitrf,
    this.cdcg,
    this.indficha,
    this.trnContab,
    this.areaReservada14,
    this.trnCont02,
    this.trnCont03,
    this.trnCont04,
    this.trnCont05,
    this.trnCont06,
    this.trnCont07,
    this.trnCont08,
    this.trnCont09,
    this.trnCont10,
    this.tiprelato,
    this.temrecipr,
    this.tiprelcob,
    this.diasrest,
    this.cdsitunov,
    this.dssitunov,
    this.areaReservada15,
    this.relatoSintetico010100,
    this.relatoSintetico010101,
    this.relatoSintetico010102,
    this.relatoSintetico010103,
    this.relatoSintetico010104,
    this.relatoSintetico010105,
    this.relatoSintetico010106,
    this.relatoSintetico010107,
    this.relatoSintetico010108,
    this.relatoSintetico010109,
    this.relatoSintetico010110,
    this.relatoSintetico010111,
    this.relatoSintetico010112,
    this.relatoSintetico010113,
    this.relatoSintetico010114,
    this.relatoSintetico010115,
    this.relatoSintetico010116,
    this.relatoSintetico010117,
    this.relatoSintetico010118,
    this.relatoSintetico010119,
    this.relatoSintetico010120,
    this.relatoSintetico010122,
    this.relatoSintetico010198,
    this.relatoSintetico030101,
    this.relatoSintetico030102,
    this.relatoSintetico030103,
    this.relatoSintetico030201,
    this.relatoSintetico030301,
    this.relatoSintetico030302,
    this.relatoSintetico030303,
    this.relatoSintetico030304,
    this.relatoSintetico030399,
    this.relatoSintetico040101,
    this.relatoSintetico040102,
    this.relatoSintetico040201,
    this.relatoSintetico040202,
    this.relatoSintetico040301,
    this.relatoSintetico040401,
    this.relatoSintetico040501,
    this.relatoSintetico040601,
    this.relatoSintetico040701,
    this.relatoSintetico040801,
    this.relatoSintetico040901,
    this.relatoSintetico041000,
    this.relatoSintetico041001,
    this.relatoSintetico041101,
    this.relatoSinteticoMensagens010299A041099,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran cdtran;
  Cdopcao cdopcao;
  Compacta compacta;
  String tipots;
  String nomets;
  Moeda moeda;
  Moeda tpstring;
  String indcusto;
  String ccusto;
  String qdsoc;
  String idioma;
  String tipoconc;
  String riskscoring;
  String autorizador;
  String segmento;
  String segmento2;
  String segmento3;
  String segmento4;
  String segmento5;
  String areaReservada;
  String modelo;
  String gerencie;
  String qtdeDias;
  String perfil;
  String grupoEmail;
  String referencia;
  String areaReservada1;
  String areaReservada2;
  String verificaTitulo;
  String filialSac;
  String cedente;
  String filialCed;
  String duplicata;
  String vencimento;
  String areaReservada3;
  String indAlertscoring;
  String indPerfilGerencie;
  String nomeConsPerson;
  String indFaturamentoPresumido;
  String indFaturamentoRiskscoring;
  String indLimitePj;
  String indCollection;
  String areaReservada4;
  String areaReservada5;
  String indSoftwa;
  String cnpjSoftwa;
  String indfeatRgc;
  String indRiskAtac;
  String areaReservada6;
  String querAnotacaoSpc;
  String querRegConsSpc;
  String iMdFaturPresu;
  String iNovoQs;
  String iQuerPerfilFin;
  String querIrm;
  String querRksetor;
  String iMdRksetor;
  String iQuerGastoest;
  String iMdGastoest;
  String iQuerIdentpj;
  String iMdIdentpj;
  String iVisaoIdpj;
  String areaReservada7;
  String iQuerAnoconspc;
  String iQuerEndfone;
  String areaReservada8;
  String iQuerSitfisica;
  String iQuerIndpagamX;
  String iModpagamX;
  String iQuerSpsocios;
  String iQuerComboSetor;
  String iQuerAlertEmp;
  String iQuerAlertSoc;
  String areaReservada9;
  String iQuerVendascart;
  String iQuerIndRcdiv;
  String areaReservada10;
  String iQuerNovoIrm;
  String iQuerAncospcsoc;
  String areaReservada11;
  String iQuerCombo6X;
  String iQuerPosPjX;
  String areaReservada12;
  String iQuerMosaicX;
  String iQuerOrgpubX;
  String areaReservada13;
  String idinf;
  String bcfic;
  String tpinf;
  String cdsitrf;
  String dssitrf;
  String cdcg;
  String indficha;
  String trnContab;
  String areaReservada14;
  String trnCont02;
  String trnCont03;
  String trnCont04;
  String trnCont05;
  String trnCont06;
  String trnCont07;
  String trnCont08;
  String trnCont09;
  String trnCont10;
  String tiprelato;
  String temrecipr;
  String tiprelcob;
  String diasrest;
  String cdsitunov;
  String dssitunov;
  String areaReservada15;
  List<RelatoSintetico0101> relatoSintetico010100;
  List<RelatoSintetico010101> relatoSintetico010101;
  List<RelatoSintetico010102> relatoSintetico010102;
  List<RelatoSintetico010103> relatoSintetico010103;
  List<RelatoSintetico010104> relatoSintetico010104;
  List<RelatoSintetico010105> relatoSintetico010105;
  List<RelatoSintetico0101> relatoSintetico010106;
  List<RelatoSintetico0101> relatoSintetico010107;
  List<RelatoSintetico010108> relatoSintetico010108;
  List<RelatoSintetico010109> relatoSintetico010109;
  List<RelatoSintetico0101> relatoSintetico010110;
  List<RelatoSintetico010111> relatoSintetico010111;
  List<RelatoSintetico0101> relatoSintetico010112;
  List<RelatoSintetico010113> relatoSintetico010113;
  List<RelatoSintetico010114> relatoSintetico010114;
  List<RelatoSintetico010115> relatoSintetico010115;
  List<RelatoSintetico010116> relatoSintetico010116;
  List<RelatoSintetico010117> relatoSintetico010117;
  List<RelatoSintetico010118> relatoSintetico010118;
  List<RelatoSintetico010119> relatoSintetico010119;
  List<RelatoSintetico010120> relatoSintetico010120;
  List<RelatoSintetico010122> relatoSintetico010122;
  List<RelatoSintetico010198> relatoSintetico010198;
  List<RelatoSintetico030101> relatoSintetico030101;
  List<RelatoSintetico030102> relatoSintetico030102;
  List<RelatoSintetico030103> relatoSintetico030103;
  List<RelatoSintetico0> relatoSintetico030201;
  List<RelatoSintetico030301Element> relatoSintetico030301;
  List<RelatoSintetico030301Element> relatoSintetico030302;
  List<RelatoSintetico030303Element> relatoSintetico030303;
  List<RelatoSintetico030303Element> relatoSintetico030304;
  List<RelatoSintetico030399> relatoSintetico030399;
  List<RelatoSintetico040101> relatoSintetico040101;
  List<RelatoSintetico040102> relatoSintetico040102;
  List<RelatoSintetico040201> relatoSintetico040201;
  List<RelatoSintetico040202> relatoSintetico040202;
  List<RelatoSintetico040301> relatoSintetico040301;
  List<RelatoSintetico040401> relatoSintetico040401;
  List<RelatoSintetico040501> relatoSintetico040501;
  List<RelatoSintetico040601> relatoSintetico040601;
  List<RelatoSintetico040701> relatoSintetico040701;
  List<RelatoSintetico040801> relatoSintetico040801;
  List<RelatoSintetico040901> relatoSintetico040901;
  List<RelatoSintetico041000> relatoSintetico041000;
  List<RelatoSintetico041001> relatoSintetico041001;
  List<RelatoSintetico0> relatoSintetico041101;
  List<RelatoSinteticoMensagens010299A041099>
      relatoSinteticoMensagens010299A041099;
  int resultCode;
  String resultDescription;

  factory SerasaCnpjEntity.fromJson(Map<String, dynamic> json) =>
      SerasaCnpjEntity(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        cdtran:
            json["cdtran"] == null ? null : cdtranValues.map[json["cdtran"]],
        cdopcao:
            json["cdopcao"] == null ? null : cdopcaoValues.map[json["cdopcao"]],
        compacta: json["compacta"] == null
            ? null
            : compactaValues.map[json["compacta"]],
        tipots: json["tipots"] == null ? null : json["tipots"],
        nomets: json["nomets"] == null ? null : json["nomets"],
        moeda: json["moeda"] == null ? null : moedaValues.map[json["moeda"]],
        tpstring:
            json["tpstring"] == null ? null : moedaValues.map[json["tpstring"]],
        indcusto: json["indcusto"] == null ? null : json["indcusto"],
        ccusto: json["ccusto"] == null ? null : json["ccusto"],
        qdsoc: json["qdsoc"] == null ? null : json["qdsoc"],
        idioma: json["idioma"] == null ? null : json["idioma"],
        tipoconc: json["tipoconc"] == null ? null : json["tipoconc"],
        riskscoring: json["riskscoring"] == null ? null : json["riskscoring"],
        autorizador: json["autorizador"] == null ? null : json["autorizador"],
        segmento: json["segmento"] == null ? null : json["segmento"],
        segmento2: json["segmento2"] == null ? null : json["segmento2"],
        segmento3: json["segmento3"] == null ? null : json["segmento3"],
        segmento4: json["segmento4"] == null ? null : json["segmento4"],
        segmento5: json["segmento5"] == null ? null : json["segmento5"],
        areaReservada:
            json["area_reservada"] == null ? null : json["area_reservada"],
        modelo: json["modelo"] == null ? null : json["modelo"],
        gerencie: json["gerencie"] == null ? null : json["gerencie"],
        qtdeDias: json["qtde_dias"] == null ? null : json["qtde_dias"],
        perfil: json["perfil"] == null ? null : json["perfil"],
        grupoEmail: json["grupo_email"] == null ? null : json["grupo_email"],
        referencia: json["referencia"] == null ? null : json["referencia"],
        areaReservada1:
            json["area_reservada1"] == null ? null : json["area_reservada1"],
        areaReservada2:
            json["area_reservada2"] == null ? null : json["area_reservada2"],
        verificaTitulo:
            json["verifica_titulo"] == null ? null : json["verifica_titulo"],
        filialSac: json["filial_sac"] == null ? null : json["filial_sac"],
        cedente: json["cedente"] == null ? null : json["cedente"],
        filialCed: json["filial_ced"] == null ? null : json["filial_ced"],
        duplicata: json["duplicata"] == null ? null : json["duplicata"],
        vencimento: json["vencimento"] == null ? null : json["vencimento"],
        areaReservada3:
            json["area_reservada3"] == null ? null : json["area_reservada3"],
        indAlertscoring:
            json["ind_alertscoring"] == null ? null : json["ind_alertscoring"],
        indPerfilGerencie: json["ind_perfil_gerencie"] == null
            ? null
            : json["ind_perfil_gerencie"],
        nomeConsPerson:
            json["nome_cons_person"] == null ? null : json["nome_cons_person"],
        indFaturamentoPresumido: json["ind_faturamento_presumido"] == null
            ? null
            : json["ind_faturamento_presumido"],
        indFaturamentoRiskscoring: json["ind_faturamento_riskscoring"] == null
            ? null
            : json["ind_faturamento_riskscoring"],
        indLimitePj:
            json["ind_limite_pj"] == null ? null : json["ind_limite_pj"],
        indCollection:
            json["ind_collection"] == null ? null : json["ind_collection"],
        areaReservada4:
            json["area_reservada4"] == null ? null : json["area_reservada4"],
        areaReservada5:
            json["area_reservada5"] == null ? null : json["area_reservada5"],
        indSoftwa: json["ind_softwa"] == null ? null : json["ind_softwa"],
        cnpjSoftwa: json["cnpj_softwa"] == null ? null : json["cnpj_softwa"],
        indfeatRgc: json["indfeat_rgc"] == null ? null : json["indfeat_rgc"],
        indRiskAtac:
            json["ind_risk_atac"] == null ? null : json["ind_risk_atac"],
        areaReservada6:
            json["area_reservada6"] == null ? null : json["area_reservada6"],
        querAnotacaoSpc: json["quer_anotacao_spc"] == null
            ? null
            : json["quer_anotacao_spc"],
        querRegConsSpc: json["quer_reg_cons_spc"] == null
            ? null
            : json["quer_reg_cons_spc"],
        iMdFaturPresu:
            json["i_md_fatur_presu"] == null ? null : json["i_md_fatur_presu"],
        iNovoQs: json["i_novo_qs"] == null ? null : json["i_novo_qs"],
        iQuerPerfilFin: json["i_quer_perfil_fin"] == null
            ? null
            : json["i_quer_perfil_fin"],
        querIrm: json["quer_irm"] == null ? null : json["quer_irm"],
        querRksetor: json["quer_rksetor"] == null ? null : json["quer_rksetor"],
        iMdRksetor: json["i_md_rksetor"] == null ? null : json["i_md_rksetor"],
        iQuerGastoest:
            json["i_quer_gastoest"] == null ? null : json["i_quer_gastoest"],
        iMdGastoest:
            json["i_md_gastoest"] == null ? null : json["i_md_gastoest"],
        iQuerIdentpj:
            json["i_quer_identpj"] == null ? null : json["i_quer_identpj"],
        iMdIdentpj: json["i_md_identpj"] == null ? null : json["i_md_identpj"],
        iVisaoIdpj: json["i_visao_idpj"] == null ? null : json["i_visao_idpj"],
        areaReservada7:
            json["area_reservada7"] == null ? null : json["area_reservada7"],
        iQuerAnoconspc:
            json["i_quer_anoconspc"] == null ? null : json["i_quer_anoconspc"],
        iQuerEndfone:
            json["i_quer_endfone"] == null ? null : json["i_quer_endfone"],
        areaReservada8:
            json["area_reservada8"] == null ? null : json["area_reservada8"],
        iQuerSitfisica:
            json["i_quer_sitfisica"] == null ? null : json["i_quer_sitfisica"],
        iQuerIndpagamX: json["i_quer_indpagam_x"] == null
            ? null
            : json["i_quer_indpagam_x"],
        iModpagamX: json["i_modpagam_x"] == null ? null : json["i_modpagam_x"],
        iQuerSpsocios:
            json["i_quer_spsocios"] == null ? null : json["i_quer_spsocios"],
        iQuerComboSetor: json["i_quer_combo_setor"] == null
            ? null
            : json["i_quer_combo_setor"],
        iQuerAlertEmp:
            json["i_quer_alert_emp"] == null ? null : json["i_quer_alert_emp"],
        iQuerAlertSoc:
            json["i_quer_alert_soc"] == null ? null : json["i_quer_alert_soc"],
        areaReservada9:
            json["area_reservada9"] == null ? null : json["area_reservada9"],
        iQuerVendascart: json["i_quer_vendascart"] == null
            ? null
            : json["i_quer_vendascart"],
        iQuerIndRcdiv:
            json["i_quer_ind_rcdiv"] == null ? null : json["i_quer_ind_rcdiv"],
        areaReservada10:
            json["area_reservada10"] == null ? null : json["area_reservada10"],
        iQuerNovoIrm:
            json["i_quer_novo_irm"] == null ? null : json["i_quer_novo_irm"],
        iQuerAncospcsoc: json["i_quer_ancospcsoc"] == null
            ? null
            : json["i_quer_ancospcsoc"],
        areaReservada11:
            json["area_reservada11"] == null ? null : json["area_reservada11"],
        iQuerCombo6X:
            json["i_quer_combo_6_x"] == null ? null : json["i_quer_combo_6_x"],
        iQuerPosPjX:
            json["i_quer_pos_pj_x"] == null ? null : json["i_quer_pos_pj_x"],
        areaReservada12:
            json["area_reservada12"] == null ? null : json["area_reservada12"],
        iQuerMosaicX:
            json["i_quer_mosaic_x"] == null ? null : json["i_quer_mosaic_x"],
        iQuerOrgpubX:
            json["i_quer_orgpub_x"] == null ? null : json["i_quer_orgpub_x"],
        areaReservada13:
            json["area_reservada13"] == null ? null : json["area_reservada13"],
        idinf: json["idinf"] == null ? null : json["idinf"],
        bcfic: json["bcfic"] == null ? null : json["bcfic"],
        tpinf: json["tpinf"] == null ? null : json["tpinf"],
        cdsitrf: json["cdsitrf"] == null ? null : json["cdsitrf"],
        dssitrf: json["dssitrf"] == null ? null : json["dssitrf"],
        cdcg: json["cdcg"] == null ? null : json["cdcg"],
        indficha: json["indficha"] == null ? null : json["indficha"],
        trnContab: json["trn_contab"] == null ? null : json["trn_contab"],
        areaReservada14:
            json["area_reservada14"] == null ? null : json["area_reservada14"],
        trnCont02: json["trn_cont02"] == null ? null : json["trn_cont02"],
        trnCont03: json["trn_cont03"] == null ? null : json["trn_cont03"],
        trnCont04: json["trn_cont04"] == null ? null : json["trn_cont04"],
        trnCont05: json["trn_cont05"] == null ? null : json["trn_cont05"],
        trnCont06: json["trn_cont06"] == null ? null : json["trn_cont06"],
        trnCont07: json["trn_cont07"] == null ? null : json["trn_cont07"],
        trnCont08: json["trn_cont08"] == null ? null : json["trn_cont08"],
        trnCont09: json["trn_cont09"] == null ? null : json["trn_cont09"],
        trnCont10: json["trn_cont10"] == null ? null : json["trn_cont10"],
        tiprelato: json["tiprelato"] == null ? null : json["tiprelato"],
        temrecipr: json["temrecipr"] == null ? null : json["temrecipr"],
        tiprelcob: json["tiprelcob"] == null ? null : json["tiprelcob"],
        diasrest: json["diasrest"] == null ? null : json["diasrest"],
        cdsitunov: json["cdsitunov"] == null ? null : json["cdsitunov"],
        dssitunov: json["dssitunov"] == null ? null : json["dssitunov"],
        areaReservada15:
            json["area_reservada15"] == null ? null : json["area_reservada15"],
        relatoSintetico010100: json["relatoSintetico010100"] == null
            ? null
            : List<RelatoSintetico0101>.from(json["relatoSintetico010100"]
                .map((x) => RelatoSintetico0101.fromJson(x))),
        relatoSintetico010101: json["relatoSintetico010101"] == null
            ? null
            : List<RelatoSintetico010101>.from(json["relatoSintetico010101"]
                .map((x) => RelatoSintetico010101.fromJson(x))),
        relatoSintetico010102: json["relatoSintetico010102"] == null
            ? null
            : List<RelatoSintetico010102>.from(json["relatoSintetico010102"]
                .map((x) => RelatoSintetico010102.fromJson(x))),
        relatoSintetico010103: json["relatoSintetico010103"] == null
            ? null
            : List<RelatoSintetico010103>.from(json["relatoSintetico010103"]
                .map((x) => RelatoSintetico010103.fromJson(x))),
        relatoSintetico010104: json["relatoSintetico010104"] == null
            ? null
            : List<RelatoSintetico010104>.from(json["relatoSintetico010104"]
                .map((x) => RelatoSintetico010104.fromJson(x))),
        relatoSintetico010105: json["relatoSintetico010105"] == null
            ? null
            : List<RelatoSintetico010105>.from(json["relatoSintetico010105"]
                .map((x) => RelatoSintetico010105.fromJson(x))),
        relatoSintetico010106: json["relatoSintetico010106"] == null
            ? null
            : List<RelatoSintetico0101>.from(json["relatoSintetico010106"]
                .map((x) => RelatoSintetico0101.fromJson(x))),
        relatoSintetico010107: json["relatoSintetico010107"] == null
            ? null
            : List<RelatoSintetico0101>.from(json["relatoSintetico010107"]
                .map((x) => RelatoSintetico0101.fromJson(x))),
        relatoSintetico010108: json["relatoSintetico010108"] == null
            ? null
            : List<RelatoSintetico010108>.from(json["relatoSintetico010108"]
                .map((x) => RelatoSintetico010108.fromJson(x))),
        relatoSintetico010109: json["relatoSintetico010109"] == null
            ? null
            : List<RelatoSintetico010109>.from(json["relatoSintetico010109"]
                .map((x) => RelatoSintetico010109.fromJson(x))),
        relatoSintetico010110: json["relatoSintetico010110"] == null
            ? null
            : List<RelatoSintetico0101>.from(json["relatoSintetico010110"]
                .map((x) => RelatoSintetico0101.fromJson(x))),
        relatoSintetico010111: json["relatoSintetico010111"] == null
            ? null
            : List<RelatoSintetico010111>.from(json["relatoSintetico010111"]
                .map((x) => RelatoSintetico010111.fromJson(x))),
        relatoSintetico010112: json["relatoSintetico010112"] == null
            ? null
            : List<RelatoSintetico0101>.from(json["relatoSintetico010112"]
                .map((x) => RelatoSintetico0101.fromJson(x))),
        relatoSintetico010113: json["relatoSintetico010113"] == null
            ? null
            : List<RelatoSintetico010113>.from(json["relatoSintetico010113"]
                .map((x) => RelatoSintetico010113.fromJson(x))),
        relatoSintetico010114: json["relatoSintetico010114"] == null
            ? null
            : List<RelatoSintetico010114>.from(json["relatoSintetico010114"]
                .map((x) => RelatoSintetico010114.fromJson(x))),
        relatoSintetico010115: json["relatoSintetico010115"] == null
            ? null
            : List<RelatoSintetico010115>.from(json["relatoSintetico010115"]
                .map((x) => RelatoSintetico010115.fromJson(x))),
        relatoSintetico010116: json["relatoSintetico010116"] == null
            ? null
            : List<RelatoSintetico010116>.from(json["relatoSintetico010116"]
                .map((x) => RelatoSintetico010116.fromJson(x))),
        relatoSintetico010117: json["relatoSintetico010117"] == null
            ? null
            : List<RelatoSintetico010117>.from(json["relatoSintetico010117"]
                .map((x) => RelatoSintetico010117.fromJson(x))),
        relatoSintetico010118: json["relatoSintetico010118"] == null
            ? null
            : List<RelatoSintetico010118>.from(json["relatoSintetico010118"]
                .map((x) => RelatoSintetico010118.fromJson(x))),
        relatoSintetico010119: json["relatoSintetico010119"] == null
            ? null
            : List<RelatoSintetico010119>.from(json["relatoSintetico010119"]
                .map((x) => RelatoSintetico010119.fromJson(x))),
        relatoSintetico010120: json["relatoSintetico010120"] == null
            ? null
            : List<RelatoSintetico010120>.from(json["relatoSintetico010120"]
                .map((x) => RelatoSintetico010120.fromJson(x))),
        relatoSintetico010122: json["relatoSintetico010122"] == null
            ? null
            : List<RelatoSintetico010122>.from(json["relatoSintetico010122"]
                .map((x) => RelatoSintetico010122.fromJson(x))),
        relatoSintetico010198: json["relatoSintetico010198"] == null
            ? null
            : List<RelatoSintetico010198>.from(json["relatoSintetico010198"]
                .map((x) => RelatoSintetico010198.fromJson(x))),
        relatoSintetico030101: json["relatoSintetico030101"] == null
            ? null
            : List<RelatoSintetico030101>.from(json["relatoSintetico030101"]
                .map((x) => RelatoSintetico030101.fromJson(x))),
        relatoSintetico030102: json["relatoSintetico030102"] == null
            ? null
            : List<RelatoSintetico030102>.from(json["relatoSintetico030102"]
                .map((x) => RelatoSintetico030102.fromJson(x))),
        relatoSintetico030103: json["relatoSintetico030103"] == null
            ? null
            : List<RelatoSintetico030103>.from(json["relatoSintetico030103"]
                .map((x) => RelatoSintetico030103.fromJson(x))),
        relatoSintetico030201: json["relatoSintetico030201"] == null
            ? null
            : List<RelatoSintetico0>.from(json["relatoSintetico030201"]
                .map((x) => RelatoSintetico0.fromJson(x))),
        relatoSintetico030301: json["relatoSintetico030301"] == null
            ? null
            : List<RelatoSintetico030301Element>.from(
                json["relatoSintetico030301"]
                    .map((x) => RelatoSintetico030301Element.fromJson(x))),
        relatoSintetico030302: json["relatoSintetico030302"] == null
            ? null
            : List<RelatoSintetico030301Element>.from(
                json["relatoSintetico030302"]
                    .map((x) => RelatoSintetico030301Element.fromJson(x))),
        relatoSintetico030303: json["relatoSintetico030303"] == null
            ? null
            : List<RelatoSintetico030303Element>.from(
                json["relatoSintetico030303"]
                    .map((x) => RelatoSintetico030303Element.fromJson(x))),
        relatoSintetico030304: json["relatoSintetico030304"] == null
            ? null
            : List<RelatoSintetico030303Element>.from(
                json["relatoSintetico030304"]
                    .map((x) => RelatoSintetico030303Element.fromJson(x))),
        relatoSintetico030399: json["relatoSintetico030399"] == null
            ? null
            : List<RelatoSintetico030399>.from(json["relatoSintetico030399"]
                .map((x) => RelatoSintetico030399.fromJson(x))),
        relatoSintetico040101: json["relatoSintetico040101"] == null
            ? null
            : List<RelatoSintetico040101>.from(json["relatoSintetico040101"]
                .map((x) => RelatoSintetico040101.fromJson(x))),
        relatoSintetico040102: json["relatoSintetico040102"] == null
            ? null
            : List<RelatoSintetico040102>.from(json["relatoSintetico040102"]
                .map((x) => RelatoSintetico040102.fromJson(x))),
        relatoSintetico040201: json["relatoSintetico040201"] == null
            ? null
            : List<RelatoSintetico040201>.from(json["relatoSintetico040201"]
                .map((x) => RelatoSintetico040201.fromJson(x))),
        relatoSintetico040202: json["relatoSintetico040202"] == null
            ? null
            : List<RelatoSintetico040202>.from(json["relatoSintetico040202"]
                .map((x) => RelatoSintetico040202.fromJson(x))),
        relatoSintetico040301: json["relatoSintetico040301"] == null
            ? null
            : List<RelatoSintetico040301>.from(json["relatoSintetico040301"]
                .map((x) => RelatoSintetico040301.fromJson(x))),
        relatoSintetico040401: json["relatoSintetico040401"] == null
            ? null
            : List<RelatoSintetico040401>.from(json["relatoSintetico040401"]
                .map((x) => RelatoSintetico040401.fromJson(x))),
        relatoSintetico040501: json["relatoSintetico040501"] == null
            ? null
            : List<RelatoSintetico040501>.from(json["relatoSintetico040501"]
                .map((x) => RelatoSintetico040501.fromJson(x))),
        relatoSintetico040601: json["relatoSintetico040601"] == null
            ? null
            : List<RelatoSintetico040601>.from(json["relatoSintetico040601"]
                .map((x) => RelatoSintetico040601.fromJson(x))),
        relatoSintetico040701: json["relatoSintetico040701"] == null
            ? null
            : List<RelatoSintetico040701>.from(json["relatoSintetico040701"]
                .map((x) => RelatoSintetico040701.fromJson(x))),
        relatoSintetico040801: json["relatoSintetico040801"] == null
            ? null
            : List<RelatoSintetico040801>.from(json["relatoSintetico040801"]
                .map((x) => RelatoSintetico040801.fromJson(x))),
        relatoSintetico040901: json["relatoSintetico040901"] == null
            ? null
            : List<RelatoSintetico040901>.from(json["relatoSintetico040901"]
                .map((x) => RelatoSintetico040901.fromJson(x))),
        relatoSintetico041000: json["relatoSintetico041000"] == null
            ? null
            : List<RelatoSintetico041000>.from(json["relatoSintetico041000"]
                .map((x) => RelatoSintetico041000.fromJson(x))),
        relatoSintetico041001: json["relatoSintetico041001"] == null
            ? null
            : List<RelatoSintetico041001>.from(json["relatoSintetico041001"]
                .map((x) => RelatoSintetico041001.fromJson(x))),
        relatoSintetico041101: json["relatoSintetico041101"] == null
            ? null
            : List<RelatoSintetico0>.from(json["relatoSintetico041101"]
                .map((x) => RelatoSintetico0.fromJson(x))),
        relatoSinteticoMensagens010299A041099:
            json["relatoSinteticoMensagens010299a041099"] == null
                ? null
                : List<RelatoSinteticoMensagens010299A041099>.from(
                    json["relatoSinteticoMensagens010299a041099"].map((x) =>
                        RelatoSinteticoMensagens010299A041099.fromJson(x))),
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "cdtran": cdtran == null ? null : cdtranValues.reverse[cdtran],
        "cdopcao": cdopcao == null ? null : cdopcaoValues.reverse[cdopcao],
        "compacta": compacta == null ? null : compactaValues.reverse[compacta],
        "tipots": tipots == null ? null : tipots,
        "nomets": nomets == null ? null : nomets,
        "moeda": moeda == null ? null : moedaValues.reverse[moeda],
        "tpstring": tpstring == null ? null : moedaValues.reverse[tpstring],
        "indcusto": indcusto == null ? null : indcusto,
        "ccusto": ccusto == null ? null : ccusto,
        "qdsoc": qdsoc == null ? null : qdsoc,
        "idioma": idioma == null ? null : idioma,
        "tipoconc": tipoconc == null ? null : tipoconc,
        "riskscoring": riskscoring == null ? null : riskscoring,
        "autorizador": autorizador == null ? null : autorizador,
        "segmento": segmento == null ? null : segmento,
        "segmento2": segmento2 == null ? null : segmento2,
        "segmento3": segmento3 == null ? null : segmento3,
        "segmento4": segmento4 == null ? null : segmento4,
        "segmento5": segmento5 == null ? null : segmento5,
        "area_reservada": areaReservada == null ? null : areaReservada,
        "modelo": modelo == null ? null : modelo,
        "gerencie": gerencie == null ? null : gerencie,
        "qtde_dias": qtdeDias == null ? null : qtdeDias,
        "perfil": perfil == null ? null : perfil,
        "grupo_email": grupoEmail == null ? null : grupoEmail,
        "referencia": referencia == null ? null : referencia,
        "area_reservada1": areaReservada1 == null ? null : areaReservada1,
        "area_reservada2": areaReservada2 == null ? null : areaReservada2,
        "verifica_titulo": verificaTitulo == null ? null : verificaTitulo,
        "filial_sac": filialSac == null ? null : filialSac,
        "cedente": cedente == null ? null : cedente,
        "filial_ced": filialCed == null ? null : filialCed,
        "duplicata": duplicata == null ? null : duplicata,
        "vencimento": vencimento == null ? null : vencimento,
        "area_reservada3": areaReservada3 == null ? null : areaReservada3,
        "ind_alertscoring": indAlertscoring == null ? null : indAlertscoring,
        "ind_perfil_gerencie":
            indPerfilGerencie == null ? null : indPerfilGerencie,
        "nome_cons_person": nomeConsPerson == null ? null : nomeConsPerson,
        "ind_faturamento_presumido":
            indFaturamentoPresumido == null ? null : indFaturamentoPresumido,
        "ind_faturamento_riskscoring": indFaturamentoRiskscoring == null
            ? null
            : indFaturamentoRiskscoring,
        "ind_limite_pj": indLimitePj == null ? null : indLimitePj,
        "ind_collection": indCollection == null ? null : indCollection,
        "area_reservada4": areaReservada4 == null ? null : areaReservada4,
        "area_reservada5": areaReservada5 == null ? null : areaReservada5,
        "ind_softwa": indSoftwa == null ? null : indSoftwa,
        "cnpj_softwa": cnpjSoftwa == null ? null : cnpjSoftwa,
        "indfeat_rgc": indfeatRgc == null ? null : indfeatRgc,
        "ind_risk_atac": indRiskAtac == null ? null : indRiskAtac,
        "area_reservada6": areaReservada6 == null ? null : areaReservada6,
        "quer_anotacao_spc": querAnotacaoSpc == null ? null : querAnotacaoSpc,
        "quer_reg_cons_spc": querRegConsSpc == null ? null : querRegConsSpc,
        "i_md_fatur_presu": iMdFaturPresu == null ? null : iMdFaturPresu,
        "i_novo_qs": iNovoQs == null ? null : iNovoQs,
        "i_quer_perfil_fin": iQuerPerfilFin == null ? null : iQuerPerfilFin,
        "quer_irm": querIrm == null ? null : querIrm,
        "quer_rksetor": querRksetor == null ? null : querRksetor,
        "i_md_rksetor": iMdRksetor == null ? null : iMdRksetor,
        "i_quer_gastoest": iQuerGastoest == null ? null : iQuerGastoest,
        "i_md_gastoest": iMdGastoest == null ? null : iMdGastoest,
        "i_quer_identpj": iQuerIdentpj == null ? null : iQuerIdentpj,
        "i_md_identpj": iMdIdentpj == null ? null : iMdIdentpj,
        "i_visao_idpj": iVisaoIdpj == null ? null : iVisaoIdpj,
        "area_reservada7": areaReservada7 == null ? null : areaReservada7,
        "i_quer_anoconspc": iQuerAnoconspc == null ? null : iQuerAnoconspc,
        "i_quer_endfone": iQuerEndfone == null ? null : iQuerEndfone,
        "area_reservada8": areaReservada8 == null ? null : areaReservada8,
        "i_quer_sitfisica": iQuerSitfisica == null ? null : iQuerSitfisica,
        "i_quer_indpagam_x": iQuerIndpagamX == null ? null : iQuerIndpagamX,
        "i_modpagam_x": iModpagamX == null ? null : iModpagamX,
        "i_quer_spsocios": iQuerSpsocios == null ? null : iQuerSpsocios,
        "i_quer_combo_setor": iQuerComboSetor == null ? null : iQuerComboSetor,
        "i_quer_alert_emp": iQuerAlertEmp == null ? null : iQuerAlertEmp,
        "i_quer_alert_soc": iQuerAlertSoc == null ? null : iQuerAlertSoc,
        "area_reservada9": areaReservada9 == null ? null : areaReservada9,
        "i_quer_vendascart": iQuerVendascart == null ? null : iQuerVendascart,
        "i_quer_ind_rcdiv": iQuerIndRcdiv == null ? null : iQuerIndRcdiv,
        "area_reservada10": areaReservada10 == null ? null : areaReservada10,
        "i_quer_novo_irm": iQuerNovoIrm == null ? null : iQuerNovoIrm,
        "i_quer_ancospcsoc": iQuerAncospcsoc == null ? null : iQuerAncospcsoc,
        "area_reservada11": areaReservada11 == null ? null : areaReservada11,
        "i_quer_combo_6_x": iQuerCombo6X == null ? null : iQuerCombo6X,
        "i_quer_pos_pj_x": iQuerPosPjX == null ? null : iQuerPosPjX,
        "area_reservada12": areaReservada12 == null ? null : areaReservada12,
        "i_quer_mosaic_x": iQuerMosaicX == null ? null : iQuerMosaicX,
        "i_quer_orgpub_x": iQuerOrgpubX == null ? null : iQuerOrgpubX,
        "area_reservada13": areaReservada13 == null ? null : areaReservada13,
        "idinf": idinf == null ? null : idinf,
        "bcfic": bcfic == null ? null : bcfic,
        "tpinf": tpinf == null ? null : tpinf,
        "cdsitrf": cdsitrf == null ? null : cdsitrf,
        "dssitrf": dssitrf == null ? null : dssitrf,
        "cdcg": cdcg == null ? null : cdcg,
        "indficha": indficha == null ? null : indficha,
        "trn_contab": trnContab == null ? null : trnContab,
        "area_reservada14": areaReservada14 == null ? null : areaReservada14,
        "trn_cont02": trnCont02 == null ? null : trnCont02,
        "trn_cont03": trnCont03 == null ? null : trnCont03,
        "trn_cont04": trnCont04 == null ? null : trnCont04,
        "trn_cont05": trnCont05 == null ? null : trnCont05,
        "trn_cont06": trnCont06 == null ? null : trnCont06,
        "trn_cont07": trnCont07 == null ? null : trnCont07,
        "trn_cont08": trnCont08 == null ? null : trnCont08,
        "trn_cont09": trnCont09 == null ? null : trnCont09,
        "trn_cont10": trnCont10 == null ? null : trnCont10,
        "tiprelato": tiprelato == null ? null : tiprelato,
        "temrecipr": temrecipr == null ? null : temrecipr,
        "tiprelcob": tiprelcob == null ? null : tiprelcob,
        "diasrest": diasrest == null ? null : diasrest,
        "cdsitunov": cdsitunov == null ? null : cdsitunov,
        "dssitunov": dssitunov == null ? null : dssitunov,
        "area_reservada15": areaReservada15 == null ? null : areaReservada15,
        "relatoSintetico010100": relatoSintetico010100 == null
            ? null
            : List<dynamic>.from(relatoSintetico010100.map((x) => x.toJson())),
        "relatoSintetico010101": relatoSintetico010101 == null
            ? null
            : List<dynamic>.from(relatoSintetico010101.map((x) => x.toJson())),
        "relatoSintetico010102": relatoSintetico010102 == null
            ? null
            : List<dynamic>.from(relatoSintetico010102.map((x) => x.toJson())),
        "relatoSintetico010103": relatoSintetico010103 == null
            ? null
            : List<dynamic>.from(relatoSintetico010103.map((x) => x.toJson())),
        "relatoSintetico010104": relatoSintetico010104 == null
            ? null
            : List<dynamic>.from(relatoSintetico010104.map((x) => x.toJson())),
        "relatoSintetico010105": relatoSintetico010105 == null
            ? null
            : List<dynamic>.from(relatoSintetico010105.map((x) => x.toJson())),
        "relatoSintetico010106": relatoSintetico010106 == null
            ? null
            : List<dynamic>.from(relatoSintetico010106.map((x) => x.toJson())),
        "relatoSintetico010107": relatoSintetico010107 == null
            ? null
            : List<dynamic>.from(relatoSintetico010107.map((x) => x.toJson())),
        "relatoSintetico010108": relatoSintetico010108 == null
            ? null
            : List<dynamic>.from(relatoSintetico010108.map((x) => x.toJson())),
        "relatoSintetico010109": relatoSintetico010109 == null
            ? null
            : List<dynamic>.from(relatoSintetico010109.map((x) => x.toJson())),
        "relatoSintetico010110": relatoSintetico010110 == null
            ? null
            : List<dynamic>.from(relatoSintetico010110.map((x) => x.toJson())),
        "relatoSintetico010111": relatoSintetico010111 == null
            ? null
            : List<dynamic>.from(relatoSintetico010111.map((x) => x.toJson())),
        "relatoSintetico010112": relatoSintetico010112 == null
            ? null
            : List<dynamic>.from(relatoSintetico010112.map((x) => x.toJson())),
        "relatoSintetico010113": relatoSintetico010113 == null
            ? null
            : List<dynamic>.from(relatoSintetico010113.map((x) => x.toJson())),
        "relatoSintetico010114": relatoSintetico010114 == null
            ? null
            : List<dynamic>.from(relatoSintetico010114.map((x) => x.toJson())),
        "relatoSintetico010115": relatoSintetico010115 == null
            ? null
            : List<dynamic>.from(relatoSintetico010115.map((x) => x.toJson())),
        "relatoSintetico010116": relatoSintetico010116 == null
            ? null
            : List<dynamic>.from(relatoSintetico010116.map((x) => x.toJson())),
        "relatoSintetico010117": relatoSintetico010117 == null
            ? null
            : List<dynamic>.from(relatoSintetico010117.map((x) => x.toJson())),
        "relatoSintetico010118": relatoSintetico010118 == null
            ? null
            : List<dynamic>.from(relatoSintetico010118.map((x) => x.toJson())),
        "relatoSintetico010119": relatoSintetico010119 == null
            ? null
            : List<dynamic>.from(relatoSintetico010119.map((x) => x.toJson())),
        "relatoSintetico010120": relatoSintetico010120 == null
            ? null
            : List<dynamic>.from(relatoSintetico010120.map((x) => x.toJson())),
        "relatoSintetico010122": relatoSintetico010122 == null
            ? null
            : List<dynamic>.from(relatoSintetico010122.map((x) => x.toJson())),
        "relatoSintetico010198": relatoSintetico010198 == null
            ? null
            : List<dynamic>.from(relatoSintetico010198.map((x) => x.toJson())),
        "relatoSintetico030101": relatoSintetico030101 == null
            ? null
            : List<dynamic>.from(relatoSintetico030101.map((x) => x.toJson())),
        "relatoSintetico030102": relatoSintetico030102 == null
            ? null
            : List<dynamic>.from(relatoSintetico030102.map((x) => x.toJson())),
        "relatoSintetico030103": relatoSintetico030103 == null
            ? null
            : List<dynamic>.from(relatoSintetico030103.map((x) => x.toJson())),
        "relatoSintetico030201": relatoSintetico030201 == null
            ? null
            : List<dynamic>.from(relatoSintetico030201.map((x) => x.toJson())),
        "relatoSintetico030301": relatoSintetico030301 == null
            ? null
            : List<dynamic>.from(relatoSintetico030301.map((x) => x.toJson())),
        "relatoSintetico030302": relatoSintetico030302 == null
            ? null
            : List<dynamic>.from(relatoSintetico030302.map((x) => x.toJson())),
        "relatoSintetico030303": relatoSintetico030303 == null
            ? null
            : List<dynamic>.from(relatoSintetico030303.map((x) => x.toJson())),
        "relatoSintetico030304": relatoSintetico030304 == null
            ? null
            : List<dynamic>.from(relatoSintetico030304.map((x) => x.toJson())),
        "relatoSintetico030399": relatoSintetico030399 == null
            ? null
            : List<dynamic>.from(relatoSintetico030399.map((x) => x.toJson())),
        "relatoSintetico040101": relatoSintetico040101 == null
            ? null
            : List<dynamic>.from(relatoSintetico040101.map((x) => x.toJson())),
        "relatoSintetico040102": relatoSintetico040102 == null
            ? null
            : List<dynamic>.from(relatoSintetico040102.map((x) => x.toJson())),
        "relatoSintetico040201": relatoSintetico040201 == null
            ? null
            : List<dynamic>.from(relatoSintetico040201.map((x) => x.toJson())),
        "relatoSintetico040202": relatoSintetico040202 == null
            ? null
            : List<dynamic>.from(relatoSintetico040202.map((x) => x.toJson())),
        "relatoSintetico040301": relatoSintetico040301 == null
            ? null
            : List<dynamic>.from(relatoSintetico040301.map((x) => x.toJson())),
        "relatoSintetico040401": relatoSintetico040401 == null
            ? null
            : List<dynamic>.from(relatoSintetico040401.map((x) => x.toJson())),
        "relatoSintetico040501": relatoSintetico040501 == null
            ? null
            : List<dynamic>.from(relatoSintetico040501.map((x) => x.toJson())),
        "relatoSintetico040601": relatoSintetico040601 == null
            ? null
            : List<dynamic>.from(relatoSintetico040601.map((x) => x.toJson())),
        "relatoSintetico040701": relatoSintetico040701 == null
            ? null
            : List<dynamic>.from(relatoSintetico040701.map((x) => x.toJson())),
        "relatoSintetico040801": relatoSintetico040801 == null
            ? null
            : List<dynamic>.from(relatoSintetico040801.map((x) => x.toJson())),
        "relatoSintetico040901": relatoSintetico040901 == null
            ? null
            : List<dynamic>.from(relatoSintetico040901.map((x) => x.toJson())),
        "relatoSintetico041000": relatoSintetico041000 == null
            ? null
            : List<dynamic>.from(relatoSintetico041000.map((x) => x.toJson())),
        "relatoSintetico041001": relatoSintetico041001 == null
            ? null
            : List<dynamic>.from(relatoSintetico041001.map((x) => x.toJson())),
        "relatoSintetico041101": relatoSintetico041101 == null
            ? null
            : List<dynamic>.from(relatoSintetico041101.map((x) => x.toJson())),
        "relatoSinteticoMensagens010299a041099":
            relatoSinteticoMensagens010299A041099 == null
                ? null
                : List<dynamic>.from(relatoSinteticoMensagens010299A041099
                    .map((x) => x.toJson())),
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

enum Cdopcao { SAMPLE_STRING_3 }

final cdopcaoValues = EnumValues({"sample string 3": Cdopcao.SAMPLE_STRING_3});

enum Cdtran { SAMPLE_STRING_2 }

final cdtranValues = EnumValues({"sample string 2": Cdtran.SAMPLE_STRING_2});

enum Cnpj { SAMPLE_STRING_1 }

final cnpjValues = EnumValues({"sample string 1": Cnpj.SAMPLE_STRING_1});

enum Compacta { SAMPLE_STRING_4 }

final compactaValues =
    EnumValues({"sample string 4": Compacta.SAMPLE_STRING_4});

enum Moeda { SAMPLE_STRING_7, SAMPLE_STRING_8 }

final moedaValues = EnumValues({
  "sample string 7": Moeda.SAMPLE_STRING_7,
  "sample string 8": Moeda.SAMPLE_STRING_8
});

class RelatoSintetico0101 {
  RelatoSintetico0101({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.mens,
    this.resultCode,
    this.resultDescription,
    this.nmFil,
    this.cdeb,
    this.princProd,
    this.dataUltatAdm,
    this.origemDados,
    this.dataUltatPart,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String mens;
  int resultCode;
  Moeda resultDescription;
  String nmFil;
  String cdeb;
  String princProd;
  String dataUltatAdm;
  String origemDados;
  String dataUltatPart;

  factory RelatoSintetico0101.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico0101(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        mens: json["mens"] == null ? null : json["mens"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : moedaValues.map[json["result_description"]],
        nmFil: json["nm_fil"] == null ? null : json["nm_fil"],
        cdeb: json["cdeb"] == null ? null : json["cdeb"],
        princProd: json["princ_prod"] == null ? null : json["princ_prod"],
        dataUltatAdm:
            json["data_ultat_adm"] == null ? null : json["data_ultat_adm"],
        origemDados: json["origem_dados"] == null ? null : json["origem_dados"],
        dataUltatPart:
            json["data_ultat_part"] == null ? null : json["data_ultat_part"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "mens": mens == null ? null : mens,
        "result_code": resultCode == null ? null : resultCode,
        "result_description": resultDescription == null
            ? null
            : moedaValues.reverse[resultDescription],
        "nm_fil": nmFil == null ? null : nmFil,
        "cdeb": cdeb == null ? null : cdeb,
        "princ_prod": princProd == null ? null : princProd,
        "data_ultat_adm": dataUltatAdm == null ? null : dataUltatAdm,
        "origem_dados": origemDados == null ? null : origemDados,
        "data_ultat_part": dataUltatPart == null ? null : dataUltatPart,
      };
}

class RelatoSintetico010101 {
  RelatoSintetico010101({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cicsuser,
    this.dataEmis,
    this.horaEmis,
    this.reservado,
    this.cnpjEditado,
    this.dataUltatCont,
    this.origemDatos,
    this.nrutrg,
    this.dtutrg,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cicsuser;
  String dataEmis;
  Moeda horaEmis;
  Moeda reservado;
  String cnpjEditado;
  String dataUltatCont;
  String origemDatos;
  String nrutrg;
  String dtutrg;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010101.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010101(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cicsuser: json["cicsuser"] == null ? null : json["cicsuser"],
        dataEmis: json["data_emis"] == null ? null : json["data_emis"],
        horaEmis: json["hora_emis"] == null
            ? null
            : moedaValues.map[json["hora_emis"]],
        reservado: json["reservado"] == null
            ? null
            : moedaValues.map[json["reservado"]],
        cnpjEditado: json["cnpj_editado"] == null ? null : json["cnpj_editado"],
        dataUltatCont:
            json["data_ultat_cont"] == null ? null : json["data_ultat_cont"],
        origemDatos: json["origem_datos"] == null ? null : json["origem_datos"],
        nrutrg: json["nrutrg"] == null ? null : json["nrutrg"],
        dtutrg: json["dtutrg"] == null ? null : json["dtutrg"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cicsuser": cicsuser == null ? null : cicsuser,
        "data_emis": dataEmis == null ? null : dataEmis,
        "hora_emis": horaEmis == null ? null : moedaValues.reverse[horaEmis],
        "reservado": reservado == null ? null : moedaValues.reverse[reservado],
        "cnpj_editado": cnpjEditado == null ? null : cnpjEditado,
        "data_ultat_cont": dataUltatCont == null ? null : dataUltatCont,
        "origem_datos": origemDatos == null ? null : origemDatos,
        "nrutrg": nrutrg == null ? null : nrutrg,
        "dtutrg": dtutrg == null ? null : dtutrg,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010102 {
  RelatoSintetico010102({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.razao,
    this.cdcgcr,
    this.nomeFantasia,
    this.nire,
    this.tpSoc,
    this.opcaoTributaria,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String razao;
  String cdcgcr;
  Moeda nomeFantasia;
  Moeda nire;
  String tpSoc;
  String opcaoTributaria;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010102.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010102(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        razao: json["razao"] == null ? null : json["razao"],
        cdcgcr: json["cdcgcr"] == null ? null : json["cdcgcr"],
        nomeFantasia: json["nome_fantasia"] == null
            ? null
            : moedaValues.map[json["nome_fantasia"]],
        nire: json["nire"] == null ? null : moedaValues.map[json["nire"]],
        tpSoc: json["tp_soc"] == null ? null : json["tp_soc"],
        opcaoTributaria:
            json["opcao_tributaria"] == null ? null : json["opcao_tributaria"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "razao": razao == null ? null : razao,
        "cdcgcr": cdcgcr == null ? null : cdcgcr,
        "nome_fantasia":
            nomeFantasia == null ? null : moedaValues.reverse[nomeFantasia],
        "nire": nire == null ? null : moedaValues.reverse[nire],
        "tp_soc": tpSoc == null ? null : tpSoc,
        "opcao_tributaria": opcaoTributaria == null ? null : opcaoTributaria,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010103 {
  RelatoSintetico010103({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ender,
    this.bairro,
    this.endereco,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ender;
  String bairro;
  Moeda endereco;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010103.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010103(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ender: json["ender"] == null ? null : json["ender"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        endereco:
            json["endereco"] == null ? null : moedaValues.map[json["endereco"]],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ender": ender == null ? null : ender,
        "bairro": bairro == null ? null : bairro,
        "endereco": endereco == null ? null : moedaValues.reverse[endereco],
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010104 {
  RelatoSintetico010104({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cidade,
    this.uf,
    this.cep,
    this.cdDdd,
    this.nrTel1,
    this.nrFax1,
    this.cdeb1,
    this.home,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cidade;
  String uf;
  Moeda cep;
  Moeda cdDdd;
  String nrTel1;
  String nrFax1;
  String cdeb1;
  String home;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010104.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010104(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cidade: json["cidade"] == null ? null : json["cidade"],
        uf: json["uf"] == null ? null : json["uf"],
        cep: json["cep"] == null ? null : moedaValues.map[json["cep"]],
        cdDdd: json["cd_ddd"] == null ? null : moedaValues.map[json["cd_ddd"]],
        nrTel1: json["nr_tel1"] == null ? null : json["nr_tel1"],
        nrFax1: json["nr_fax1"] == null ? null : json["nr_fax1"],
        cdeb1: json["cdeb1"] == null ? null : json["cdeb1"],
        home: json["home"] == null ? null : json["home"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cidade": cidade == null ? null : cidade,
        "uf": uf == null ? null : uf,
        "cep": cep == null ? null : moedaValues.reverse[cep],
        "cd_ddd": cdDdd == null ? null : moedaValues.reverse[cdDdd],
        "nr_tel1": nrTel1 == null ? null : nrTel1,
        "nr_fax1": nrFax1 == null ? null : nrFax1,
        "cdeb1": cdeb1 == null ? null : cdeb1,
        "home": home == null ? null : home,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010105 {
  RelatoSintetico010105({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.dataFund,
    this.dataCnpj,
    this.ramoAtv,
    this.cdsa,
    this.nrEmp,
    this.pcCompra,
    this.pcVendas,
    this.nrFil,
    this.qtFil,
    this.cnae,
    this.dtindoper,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String dataFund;
  String dataCnpj;
  Moeda ramoAtv;
  Moeda cdsa;
  String nrEmp;
  String pcCompra;
  String pcVendas;
  String nrFil;
  String qtFil;
  String cnae;
  String dtindoper;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010105.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010105(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        dataFund: json["data_fund"] == null ? null : json["data_fund"],
        dataCnpj: json["data_cnpj"] == null ? null : json["data_cnpj"],
        ramoAtv:
            json["ramo_atv"] == null ? null : moedaValues.map[json["ramo_atv"]],
        cdsa: json["cdsa"] == null ? null : moedaValues.map[json["cdsa"]],
        nrEmp: json["nr_emp"] == null ? null : json["nr_emp"],
        pcCompra: json["pc_compra"] == null ? null : json["pc_compra"],
        pcVendas: json["pc_vendas"] == null ? null : json["pc_vendas"],
        nrFil: json["nr_fil"] == null ? null : json["nr_fil"],
        qtFil: json["qt_fil"] == null ? null : json["qt_fil"],
        cnae: json["cnae"] == null ? null : json["cnae"],
        dtindoper: json["dtindoper"] == null ? null : json["dtindoper"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "data_fund": dataFund == null ? null : dataFund,
        "data_cnpj": dataCnpj == null ? null : dataCnpj,
        "ramo_atv": ramoAtv == null ? null : moedaValues.reverse[ramoAtv],
        "cdsa": cdsa == null ? null : moedaValues.reverse[cdsa],
        "nr_emp": nrEmp == null ? null : nrEmp,
        "pc_compra": pcCompra == null ? null : pcCompra,
        "pc_vendas": pcVendas == null ? null : pcVendas,
        "nr_fil": nrFil == null ? null : nrFil,
        "qt_fil": qtFil == null ? null : qtFil,
        "cnae": cnae == null ? null : cnae,
        "dtindoper": dtindoper == null ? null : dtindoper,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010108 {
  RelatoSintetico010108({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.dataUltatCs,
    this.vrCapsocCs,
    this.vrCapreaCs,
    this.vrCapautCs,
    this.desCdnaCs,
    this.desCdcraoCs,
    this.desCparCs,
    this.tipretCs,
    this.situacCaptotal,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String dataUltatCs;
  String vrCapsocCs;
  Moeda vrCapreaCs;
  Moeda vrCapautCs;
  String desCdnaCs;
  String desCdcraoCs;
  String desCparCs;
  String tipretCs;
  String situacCaptotal;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010108.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010108(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        dataUltatCs:
            json["data_ultat_cs"] == null ? null : json["data_ultat_cs"],
        vrCapsocCs: json["vr_capsoc_cs"] == null ? null : json["vr_capsoc_cs"],
        vrCapreaCs: json["vr_caprea_cs"] == null
            ? null
            : moedaValues.map[json["vr_caprea_cs"]],
        vrCapautCs: json["vr_capaut_cs"] == null
            ? null
            : moedaValues.map[json["vr_capaut_cs"]],
        desCdnaCs: json["des_cdna_cs"] == null ? null : json["des_cdna_cs"],
        desCdcraoCs:
            json["des_cdcrao_cs"] == null ? null : json["des_cdcrao_cs"],
        desCparCs: json["des_cpar_cs"] == null ? null : json["des_cpar_cs"],
        tipretCs: json["tipret_cs"] == null ? null : json["tipret_cs"],
        situacCaptotal:
            json["situac_captotal"] == null ? null : json["situac_captotal"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "data_ultat_cs": dataUltatCs == null ? null : dataUltatCs,
        "vr_capsoc_cs": vrCapsocCs == null ? null : vrCapsocCs,
        "vr_caprea_cs":
            vrCapreaCs == null ? null : moedaValues.reverse[vrCapreaCs],
        "vr_capaut_cs":
            vrCapautCs == null ? null : moedaValues.reverse[vrCapautCs],
        "des_cdna_cs": desCdnaCs == null ? null : desCdnaCs,
        "des_cdcrao_cs": desCdcraoCs == null ? null : desCdcraoCs,
        "des_cpar_cs": desCparCs == null ? null : desCparCs,
        "tipret_cs": tipretCs == null ? null : tipretCs,
        "situac_captotal": situacCaptotal == null ? null : situacCaptotal,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010109 {
  RelatoSintetico010109({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.identCs,
    this.cnpjCpfCs,
    this.cnpjSeqCs,
    this.digCpfCs,
    this.nomeSocioCs,
    this.nacionalCs,
    this.percapCs,
    this.dataEntraCs,
    this.restriSocio,
    this.pervotCs,
    this.cdsitrf,
    this.cdsaSocio,
    this.situacCs,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String identCs;
  String cnpjCpfCs;
  Moeda cnpjSeqCs;
  Moeda digCpfCs;
  String nomeSocioCs;
  String nacionalCs;
  String percapCs;
  String dataEntraCs;
  String restriSocio;
  String pervotCs;
  String cdsitrf;
  String cdsaSocio;
  String situacCs;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010109.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010109(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        identCs: json["ident_cs"] == null ? null : json["ident_cs"],
        cnpjCpfCs: json["cnpj_cpf_cs"] == null ? null : json["cnpj_cpf_cs"],
        cnpjSeqCs: json["cnpj_seq_cs"] == null
            ? null
            : moedaValues.map[json["cnpj_seq_cs"]],
        digCpfCs: json["dig_cpf_cs"] == null
            ? null
            : moedaValues.map[json["dig_cpf_cs"]],
        nomeSocioCs:
            json["nome_socio_cs"] == null ? null : json["nome_socio_cs"],
        nacionalCs: json["nacional_cs"] == null ? null : json["nacional_cs"],
        percapCs: json["percap_cs"] == null ? null : json["percap_cs"],
        dataEntraCs:
            json["data_entra_cs"] == null ? null : json["data_entra_cs"],
        restriSocio: json["restri_socio"] == null ? null : json["restri_socio"],
        pervotCs: json["pervot_cs"] == null ? null : json["pervot_cs"],
        cdsitrf: json["cdsitrf"] == null ? null : json["cdsitrf"],
        cdsaSocio: json["cdsa_socio"] == null ? null : json["cdsa_socio"],
        situacCs: json["situac_cs"] == null ? null : json["situac_cs"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ident_cs": identCs == null ? null : identCs,
        "cnpj_cpf_cs": cnpjCpfCs == null ? null : cnpjCpfCs,
        "cnpj_seq_cs":
            cnpjSeqCs == null ? null : moedaValues.reverse[cnpjSeqCs],
        "dig_cpf_cs": digCpfCs == null ? null : moedaValues.reverse[digCpfCs],
        "nome_socio_cs": nomeSocioCs == null ? null : nomeSocioCs,
        "nacional_cs": nacionalCs == null ? null : nacionalCs,
        "percap_cs": percapCs == null ? null : percapCs,
        "data_entra_cs": dataEntraCs == null ? null : dataEntraCs,
        "restri_socio": restriSocio == null ? null : restriSocio,
        "pervot_cs": pervotCs == null ? null : pervotCs,
        "cdsitrf": cdsitrf == null ? null : cdsitrf,
        "cdsa_socio": cdsaSocio == null ? null : cdsaSocio,
        "situac_cs": situacCs == null ? null : situacCs,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010111 {
  RelatoSintetico010111({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.identAdm,
    this.cnpjCpfAdm,
    this.cnpjSeqAdm,
    this.digCpfAdm,
    this.nomeAdm,
    this.cargoAdm,
    this.nacionalAdm,
    this.estCivilAdm,
    this.dataIniMandatoAdm,
    this.dataFimMandatoAdm,
    this.restriAdmi,
    this.cargoAdmi,
    this.cdsitrf,
    this.dataEntraAdm,
    this.situacAdm,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String identAdm;
  String cnpjCpfAdm;
  Moeda cnpjSeqAdm;
  Moeda digCpfAdm;
  String nomeAdm;
  String cargoAdm;
  String nacionalAdm;
  String estCivilAdm;
  String dataIniMandatoAdm;
  String dataFimMandatoAdm;
  String restriAdmi;
  String cargoAdmi;
  String cdsitrf;
  String dataEntraAdm;
  String situacAdm;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010111.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010111(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        identAdm: json["ident_adm"] == null ? null : json["ident_adm"],
        cnpjCpfAdm: json["cnpj_cpf_adm"] == null ? null : json["cnpj_cpf_adm"],
        cnpjSeqAdm: json["cnpj_seq_adm"] == null
            ? null
            : moedaValues.map[json["cnpj_seq_adm"]],
        digCpfAdm: json["dig_cpf_adm"] == null
            ? null
            : moedaValues.map[json["dig_cpf_adm"]],
        nomeAdm: json["nome_adm"] == null ? null : json["nome_adm"],
        cargoAdm: json["cargo_adm"] == null ? null : json["cargo_adm"],
        nacionalAdm: json["nacional_adm"] == null ? null : json["nacional_adm"],
        estCivilAdm:
            json["est_civil_adm"] == null ? null : json["est_civil_adm"],
        dataIniMandatoAdm: json["data_ini_mandato_adm"] == null
            ? null
            : json["data_ini_mandato_adm"],
        dataFimMandatoAdm: json["data_fim_mandato_adm"] == null
            ? null
            : json["data_fim_mandato_adm"],
        restriAdmi: json["restri_admi"] == null ? null : json["restri_admi"],
        cargoAdmi: json["cargo_admi"] == null ? null : json["cargo_admi"],
        cdsitrf: json["cdsitrf"] == null ? null : json["cdsitrf"],
        dataEntraAdm:
            json["data_entra_adm"] == null ? null : json["data_entra_adm"],
        situacAdm: json["situac_adm"] == null ? null : json["situac_adm"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ident_adm": identAdm == null ? null : identAdm,
        "cnpj_cpf_adm": cnpjCpfAdm == null ? null : cnpjCpfAdm,
        "cnpj_seq_adm":
            cnpjSeqAdm == null ? null : moedaValues.reverse[cnpjSeqAdm],
        "dig_cpf_adm":
            digCpfAdm == null ? null : moedaValues.reverse[digCpfAdm],
        "nome_adm": nomeAdm == null ? null : nomeAdm,
        "cargo_adm": cargoAdm == null ? null : cargoAdm,
        "nacional_adm": nacionalAdm == null ? null : nacionalAdm,
        "est_civil_adm": estCivilAdm == null ? null : estCivilAdm,
        "data_ini_mandato_adm":
            dataIniMandatoAdm == null ? null : dataIniMandatoAdm,
        "data_fim_mandato_adm":
            dataFimMandatoAdm == null ? null : dataFimMandatoAdm,
        "restri_admi": restriAdmi == null ? null : restriAdmi,
        "cargo_admi": cargoAdmi == null ? null : cargoAdmi,
        "cdsitrf": cdsitrf == null ? null : cdsitrf,
        "data_entra_adm": dataEntraAdm == null ? null : dataEntraAdm,
        "situac_adm": situacAdm == null ? null : situacAdm,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010113 {
  RelatoSintetico010113({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cnpjCpfPada,
    this.digPada,
    this.empLigPada,
    this.restriPada,
    this.cnpjSeqPada,
    this.identPada,
    this.cdsitrf,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cnpjCpfPada;
  String digPada;
  Moeda empLigPada;
  Moeda restriPada;
  String cnpjSeqPada;
  String identPada;
  String cdsitrf;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010113.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010113(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cnpjCpfPada:
            json["cnpj_cpf_pada"] == null ? null : json["cnpj_cpf_pada"],
        digPada: json["dig_pada"] == null ? null : json["dig_pada"],
        empLigPada: json["emp_lig_pada"] == null
            ? null
            : moedaValues.map[json["emp_lig_pada"]],
        restriPada: json["restri_pada"] == null
            ? null
            : moedaValues.map[json["restri_pada"]],
        cnpjSeqPada:
            json["cnpj_seq_pada"] == null ? null : json["cnpj_seq_pada"],
        identPada: json["ident_pada"] == null ? null : json["ident_pada"],
        cdsitrf: json["cdsitrf"] == null ? null : json["cdsitrf"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cnpj_cpf_pada": cnpjCpfPada == null ? null : cnpjCpfPada,
        "dig_pada": digPada == null ? null : digPada,
        "emp_lig_pada":
            empLigPada == null ? null : moedaValues.reverse[empLigPada],
        "restri_pada":
            restriPada == null ? null : moedaValues.reverse[restriPada],
        "cnpj_seq_pada": cnpjSeqPada == null ? null : cnpjSeqPada,
        "ident_pada": identPada == null ? null : identPada,
        "cdsitrf": cdsitrf == null ? null : cdsitrf,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010114 {
  RelatoSintetico010114({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.nmanPante,
    this.vinculoPante,
    this.cdebPante,
    this.cdebDescrPante,
    this.cdebUfPante,
    this.percapPante,
    this.retriPante,
    this.cnpjCpfPante,
    this.cnpjSeqPante,
    this.digPante,
    this.identPante,
    this.cdsitrfPante,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String nmanPante;
  String vinculoPante;
  Moeda cdebPante;
  Moeda cdebDescrPante;
  String cdebUfPante;
  String percapPante;
  String retriPante;
  String cnpjCpfPante;
  String cnpjSeqPante;
  String digPante;
  String identPante;
  String cdsitrfPante;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010114.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010114(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        nmanPante: json["nman_pante"] == null ? null : json["nman_pante"],
        vinculoPante:
            json["vinculo_pante"] == null ? null : json["vinculo_pante"],
        cdebPante: json["cdeb_pante"] == null
            ? null
            : moedaValues.map[json["cdeb_pante"]],
        cdebDescrPante: json["cdeb_descr_pante"] == null
            ? null
            : moedaValues.map[json["cdeb_descr_pante"]],
        cdebUfPante:
            json["cdeb_uf_pante"] == null ? null : json["cdeb_uf_pante"],
        percapPante: json["percap_pante"] == null ? null : json["percap_pante"],
        retriPante: json["retri_pante"] == null ? null : json["retri_pante"],
        cnpjCpfPante:
            json["cnpj_cpf_pante"] == null ? null : json["cnpj_cpf_pante"],
        cnpjSeqPante:
            json["cnpj_seq_pante"] == null ? null : json["cnpj_seq_pante"],
        digPante: json["dig_pante"] == null ? null : json["dig_pante"],
        identPante: json["ident_pante"] == null ? null : json["ident_pante"],
        cdsitrfPante:
            json["cdsitrf_pante"] == null ? null : json["cdsitrf_pante"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "nman_pante": nmanPante == null ? null : nmanPante,
        "vinculo_pante": vinculoPante == null ? null : vinculoPante,
        "cdeb_pante": cdebPante == null ? null : moedaValues.reverse[cdebPante],
        "cdeb_descr_pante":
            cdebDescrPante == null ? null : moedaValues.reverse[cdebDescrPante],
        "cdeb_uf_pante": cdebUfPante == null ? null : cdebUfPante,
        "percap_pante": percapPante == null ? null : percapPante,
        "retri_pante": retriPante == null ? null : retriPante,
        "cnpj_cpf_pante": cnpjCpfPante == null ? null : cnpjCpfPante,
        "cnpj_seq_pante": cnpjSeqPante == null ? null : cnpjSeqPante,
        "dig_pante": digPante == null ? null : digPante,
        "ident_pante": identPante == null ? null : identPante,
        "cdsitrf_pante": cdsitrfPante == null ? null : cdsitrfPante,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010115 {
  RelatoSintetico010115({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.nome,
    this.reservadoSerasa,
    this.situacao,
    this.tpdoc,
    this.nire,
    this.origem,
    this.reservadoSerasa2,
    this.uf,
    this.praca,
    this.cidade,
    this.reservadoSerasa3,
    this.sqger,
    this.ident,
    this.restri,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String nome;
  String reservadoSerasa;
  Moeda situacao;
  Moeda tpdoc;
  String nire;
  String origem;
  String reservadoSerasa2;
  String uf;
  String praca;
  String cidade;
  String reservadoSerasa3;
  String sqger;
  String ident;
  String restri;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010115.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010115(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        nome: json["nome"] == null ? null : json["nome"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
        situacao:
            json["situacao"] == null ? null : moedaValues.map[json["situacao"]],
        tpdoc: json["tpdoc"] == null ? null : moedaValues.map[json["tpdoc"]],
        nire: json["nire"] == null ? null : json["nire"],
        origem: json["origem"] == null ? null : json["origem"],
        reservadoSerasa2: json["reservado_serasa2"] == null
            ? null
            : json["reservado_serasa2"],
        uf: json["uf"] == null ? null : json["uf"],
        praca: json["praca"] == null ? null : json["praca"],
        cidade: json["cidade"] == null ? null : json["cidade"],
        reservadoSerasa3: json["reservado_serasa3"] == null
            ? null
            : json["reservado_serasa3"],
        sqger: json["sqger"] == null ? null : json["sqger"],
        ident: json["ident"] == null ? null : json["ident"],
        restri: json["restri"] == null ? null : json["restri"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "nome": nome == null ? null : nome,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
        "situacao": situacao == null ? null : moedaValues.reverse[situacao],
        "tpdoc": tpdoc == null ? null : moedaValues.reverse[tpdoc],
        "nire": nire == null ? null : nire,
        "origem": origem == null ? null : origem,
        "reservado_serasa2": reservadoSerasa2 == null ? null : reservadoSerasa2,
        "uf": uf == null ? null : uf,
        "praca": praca == null ? null : praca,
        "cidade": cidade == null ? null : cidade,
        "reservado_serasa3": reservadoSerasa3 == null ? null : reservadoSerasa3,
        "sqger": sqger == null ? null : sqger,
        "ident": ident == null ? null : ident,
        "restri": restri == null ? null : restri,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010116 {
  RelatoSintetico010116({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.razao,
    this.reservadoSerasa,
    this.dtmtAntec,
    this.filler,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String razao;
  String reservadoSerasa;
  Moeda dtmtAntec;
  Moeda filler;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010116.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010116(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        razao: json["razao"] == null ? null : json["razao"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
        dtmtAntec: json["dtmt_antec"] == null
            ? null
            : moedaValues.map[json["dtmt_antec"]],
        filler: json["filler"] == null ? null : moedaValues.map[json["filler"]],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "razao": razao == null ? null : razao,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
        "dtmt_antec": dtmtAntec == null ? null : moedaValues.reverse[dtmtAntec],
        "filler": filler == null ? null : moedaValues.reverse[filler],
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010117 {
  RelatoSintetico010117({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cpf,
    this.sqcpf,
    this.dgcpf,
    this.dtatu,
    this.nmpf,
    this.nrrggl,
    this.dtns,
    this.vinculo,
    this.cdebnshg,
    this.ufns,
    this.ddd,
    this.fone,
    this.ramal,
    this.nmlg,
    this.dsbr,
    this.cdebhg,
    this.cduf,
    this.cdce,
    this.tmrd,
    this.situac,
    this.resultCode,
    this.resultDescription,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cpf;
  String sqcpf;
  Moeda dgcpf;
  Moeda dtatu;
  String nmpf;
  String nrrggl;
  String dtns;
  String vinculo;
  String cdebnshg;
  String ufns;
  String ddd;
  String fone;
  String ramal;
  String nmlg;
  String dsbr;
  String cdebhg;
  String cduf;
  String cdce;
  String tmrd;
  String situac;
  int resultCode;
  String resultDescription;

  factory RelatoSintetico010117.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010117(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cpf: json["cpf"] == null ? null : json["cpf"],
        sqcpf: json["sqcpf"] == null ? null : json["sqcpf"],
        dgcpf: json["dgcpf"] == null ? null : moedaValues.map[json["dgcpf"]],
        dtatu: json["dtatu"] == null ? null : moedaValues.map[json["dtatu"]],
        nmpf: json["nmpf"] == null ? null : json["nmpf"],
        nrrggl: json["nrrggl"] == null ? null : json["nrrggl"],
        dtns: json["dtns"] == null ? null : json["dtns"],
        vinculo: json["vinculo"] == null ? null : json["vinculo"],
        cdebnshg: json["cdebnshg"] == null ? null : json["cdebnshg"],
        ufns: json["ufns"] == null ? null : json["ufns"],
        ddd: json["ddd"] == null ? null : json["ddd"],
        fone: json["fone"] == null ? null : json["fone"],
        ramal: json["ramal"] == null ? null : json["ramal"],
        nmlg: json["nmlg"] == null ? null : json["nmlg"],
        dsbr: json["dsbr"] == null ? null : json["dsbr"],
        cdebhg: json["cdebhg"] == null ? null : json["cdebhg"],
        cduf: json["cduf"] == null ? null : json["cduf"],
        cdce: json["cdce"] == null ? null : json["cdce"],
        tmrd: json["tmrd"] == null ? null : json["tmrd"],
        situac: json["situac"] == null ? null : json["situac"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cpf": cpf == null ? null : cpf,
        "sqcpf": sqcpf == null ? null : sqcpf,
        "dgcpf": dgcpf == null ? null : moedaValues.reverse[dgcpf],
        "dtatu": dtatu == null ? null : moedaValues.reverse[dtatu],
        "nmpf": nmpf == null ? null : nmpf,
        "nrrggl": nrrggl == null ? null : nrrggl,
        "dtns": dtns == null ? null : dtns,
        "vinculo": vinculo == null ? null : vinculo,
        "cdebnshg": cdebnshg == null ? null : cdebnshg,
        "ufns": ufns == null ? null : ufns,
        "ddd": ddd == null ? null : ddd,
        "fone": fone == null ? null : fone,
        "ramal": ramal == null ? null : ramal,
        "nmlg": nmlg == null ? null : nmlg,
        "dsbr": dsbr == null ? null : dsbr,
        "cdebhg": cdebhg == null ? null : cdebhg,
        "cduf": cduf == null ? null : cduf,
        "cdce": cdce == null ? null : cdce,
        "tmrd": tmrd == null ? null : tmrd,
        "situac": situac == null ? null : situac,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class RelatoSintetico010118 {
  RelatoSintetico010118({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cdpohg,
    this.rhmm,
    this.ourh,
    this.cdphouhg,
    this.oarhhg,
    this.cpfch,
    this.dgpf,
    this.nmpfch,
    this.nrrgch,
    this.rhmmch,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cdpohg;
  String rhmm;
  Moeda ourh;
  Moeda cdphouhg;
  String oarhhg;
  String cpfch;
  String dgpf;
  String nmpfch;
  String nrrgch;
  String rhmmch;

  factory RelatoSintetico010118.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010118(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cdpohg: json["cdpohg"] == null ? null : json["cdpohg"],
        rhmm: json["rhmm"] == null ? null : json["rhmm"],
        ourh: json["ourh"] == null ? null : moedaValues.map[json["ourh"]],
        cdphouhg:
            json["cdphouhg"] == null ? null : moedaValues.map[json["cdphouhg"]],
        oarhhg: json["oarhhg"] == null ? null : json["oarhhg"],
        cpfch: json["cpfch"] == null ? null : json["cpfch"],
        dgpf: json["dgpf"] == null ? null : json["dgpf"],
        nmpfch: json["nmpfch"] == null ? null : json["nmpfch"],
        nrrgch: json["nrrgch"] == null ? null : json["nrrgch"],
        rhmmch: json["rhmmch"] == null ? null : json["rhmmch"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cdpohg": cdpohg == null ? null : cdpohg,
        "rhmm": rhmm == null ? null : rhmm,
        "ourh": ourh == null ? null : moedaValues.reverse[ourh],
        "cdphouhg": cdphouhg == null ? null : moedaValues.reverse[cdphouhg],
        "oarhhg": oarhhg == null ? null : oarhhg,
        "cpfch": cpfch == null ? null : cpfch,
        "dgpf": dgpf == null ? null : dgpf,
        "nmpfch": nmpfch == null ? null : nmpfch,
        "nrrgch": nrrgch == null ? null : nrrgch,
        "rhmmch": rhmmch == null ? null : rhmmch,
      };
}

class RelatoSintetico010119 {
  RelatoSintetico010119({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cnpj1010119,
    this.filial,
    this.dgcnpj,
    this.dtfund,
    this.dtatu,
    this.razao,
    this.nmft,
    this.vinculo,
    this.situac,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cnpj1010119;
  String filial;
  Moeda dgcnpj;
  Moeda dtfund;
  String dtatu;
  String razao;
  String nmft;
  String vinculo;
  String situac;

  factory RelatoSintetico010119.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010119(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cnpj1010119: json["cnpj_1010119"] == null ? null : json["cnpj_1010119"],
        filial: json["filial"] == null ? null : json["filial"],
        dgcnpj: json["dgcnpj"] == null ? null : moedaValues.map[json["dgcnpj"]],
        dtfund: json["dtfund"] == null ? null : moedaValues.map[json["dtfund"]],
        dtatu: json["dtatu"] == null ? null : json["dtatu"],
        razao: json["razao"] == null ? null : json["razao"],
        nmft: json["nmft"] == null ? null : json["nmft"],
        vinculo: json["vinculo"] == null ? null : json["vinculo"],
        situac: json["situac"] == null ? null : json["situac"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cnpj_1010119": cnpj1010119 == null ? null : cnpj1010119,
        "filial": filial == null ? null : filial,
        "dgcnpj": dgcnpj == null ? null : moedaValues.reverse[dgcnpj],
        "dtfund": dtfund == null ? null : moedaValues.reverse[dtfund],
        "dtatu": dtatu == null ? null : dtatu,
        "razao": razao == null ? null : razao,
        "nmft": nmft == null ? null : nmft,
        "vinculo": vinculo == null ? null : vinculo,
        "situac": situac == null ? null : situac,
      };
}

class RelatoSintetico010120 {
  RelatoSintetico010120({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.nmlg,
    this.dsbr,
    this.cdebhg,
    this.cduf,
    this.cdce,
    this.ddd,
    this.fone,
    this.ramal,
    this.ramo,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String nmlg;
  String dsbr;
  Moeda cdebhg;
  Moeda cduf;
  String cdce;
  String ddd;
  String fone;
  String ramal;
  String ramo;

  factory RelatoSintetico010120.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010120(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        nmlg: json["nmlg"] == null ? null : json["nmlg"],
        dsbr: json["dsbr"] == null ? null : json["dsbr"],
        cdebhg: json["cdebhg"] == null ? null : moedaValues.map[json["cdebhg"]],
        cduf: json["cduf"] == null ? null : moedaValues.map[json["cduf"]],
        cdce: json["cdce"] == null ? null : json["cdce"],
        ddd: json["ddd"] == null ? null : json["ddd"],
        fone: json["fone"] == null ? null : json["fone"],
        ramal: json["ramal"] == null ? null : json["ramal"],
        ramo: json["ramo"] == null ? null : json["ramo"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "nmlg": nmlg == null ? null : nmlg,
        "dsbr": dsbr == null ? null : dsbr,
        "cdebhg": cdebhg == null ? null : moedaValues.reverse[cdebhg],
        "cduf": cduf == null ? null : moedaValues.reverse[cduf],
        "cdce": cdce == null ? null : cdce,
        "ddd": ddd == null ? null : ddd,
        "fone": fone == null ? null : fone,
        "ramal": ramal == null ? null : ramal,
        "ramo": ramo == null ? null : ramo,
      };
}

class RelatoSintetico010122 {
  RelatoSintetico010122({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.rzsoc,
    this.nire,
    this.filler,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String rzsoc;
  String nire;
  Moeda filler;

  factory RelatoSintetico010122.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010122(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        rzsoc: json["rzsoc"] == null ? null : json["rzsoc"],
        nire: json["nire"] == null ? null : json["nire"],
        filler: json["filler"] == null ? null : moedaValues.map[json["filler"]],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "rzsoc": rzsoc == null ? null : rzsoc,
        "nire": nire == null ? null : nire,
        "filler": filler == null ? null : moedaValues.reverse[filler],
      };
}

class RelatoSintetico010198 {
  RelatoSintetico010198({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.mens,
    this.dtatualiza,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String mens;
  String dtatualiza;

  factory RelatoSintetico010198.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico010198(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        mens: json["mens"] == null ? null : json["mens"],
        dtatualiza: json["dtatualiza"] == null ? null : json["dtatualiza"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "mens": mens == null ? null : mens,
        "dtatualiza": dtatualiza == null ? null : dtatualiza,
      };
}

class RelatoSintetico030101 {
  RelatoSintetico030101({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.anoCons,
    this.mesCons,
    this.mesDesCom,
    this.qtdCons,
    this.qtdBcoCons,
    this.indBcoEmp,
    this.reservado,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String anoCons;
  String mesCons;
  Moeda mesDesCom;
  Moeda qtdCons;
  String qtdBcoCons;
  String indBcoEmp;
  String reservado;

  factory RelatoSintetico030101.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico030101(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        anoCons: json["ano_cons"] == null ? null : json["ano_cons"],
        mesCons: json["mes_cons"] == null ? null : json["mes_cons"],
        mesDesCom: json["mes_des_com"] == null
            ? null
            : moedaValues.map[json["mes_des_com"]],
        qtdCons:
            json["qtd_cons"] == null ? null : moedaValues.map[json["qtd_cons"]],
        qtdBcoCons: json["qtd_bco_cons"] == null ? null : json["qtd_bco_cons"],
        indBcoEmp: json["ind_bco_emp"] == null ? null : json["ind_bco_emp"],
        reservado: json["reservado"] == null ? null : json["reservado"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ano_cons": anoCons == null ? null : anoCons,
        "mes_cons": mesCons == null ? null : mesCons,
        "mes_des_com":
            mesDesCom == null ? null : moedaValues.reverse[mesDesCom],
        "qtd_cons": qtdCons == null ? null : moedaValues.reverse[qtdCons],
        "qtd_bco_cons": qtdBcoCons == null ? null : qtdBcoCons,
        "ind_bco_emp": indBcoEmp == null ? null : indBcoEmp,
        "reservado": reservado == null ? null : reservado,
      };
}

class RelatoSintetico030102 {
  RelatoSintetico030102({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.dataCons,
    this.nmCons,
    this.qtCons,
    this.cnpjCons,
    this.reservado1,
    this.reservado2,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String dataCons;
  String nmCons;
  Moeda qtCons;
  Moeda cnpjCons;
  String reservado1;
  String reservado2;

  factory RelatoSintetico030102.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico030102(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        dataCons: json["data_cons"] == null ? null : json["data_cons"],
        nmCons: json["nm_cons"] == null ? null : json["nm_cons"],
        qtCons:
            json["qt_cons"] == null ? null : moedaValues.map[json["qt_cons"]],
        cnpjCons: json["cnpj_cons"] == null
            ? null
            : moedaValues.map[json["cnpj_cons"]],
        reservado1: json["reservado1"] == null ? null : json["reservado1"],
        reservado2: json["reservado2"] == null ? null : json["reservado2"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "data_cons": dataCons == null ? null : dataCons,
        "nm_cons": nmCons == null ? null : nmCons,
        "qt_cons": qtCons == null ? null : moedaValues.reverse[qtCons],
        "cnpj_cons": cnpjCons == null ? null : moedaValues.reverse[cnpjCons],
        "reservado1": reservado1 == null ? null : reservado1,
        "reservado2": reservado2 == null ? null : reservado2,
      };
}

class RelatoSintetico030103 {
  RelatoSintetico030103({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.fraseAlerta,
    this.dataAlerta,
    this.reservado,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String fraseAlerta;
  String dataAlerta;
  Moeda reservado;

  factory RelatoSintetico030103.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico030103(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        fraseAlerta: json["frase_alerta"] == null ? null : json["frase_alerta"],
        dataAlerta: json["data_alerta"] == null ? null : json["data_alerta"],
        reservado: json["reservado"] == null
            ? null
            : moedaValues.map[json["reservado"]],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "frase_alerta": fraseAlerta == null ? null : fraseAlerta,
        "data_alerta": dataAlerta == null ? null : dataAlerta,
        "reservado": reservado == null ? null : moedaValues.reverse[reservado],
      };
}

class RelatoSintetico0 {
  RelatoSintetico0({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.nomePart,
    this.docuPart,
    this.tipoPessPart,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String nomePart;
  String docuPart;
  Moeda tipoPessPart;

  factory RelatoSintetico0.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico0(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        nomePart: json["nome_part"] == null ? null : json["nome_part"],
        docuPart: json["docu_part"] == null ? null : json["docu_part"],
        tipoPessPart: json["tipo_pess_part"] == null
            ? null
            : moedaValues.map[json["tipo_pess_part"]],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "nome_part": nomePart == null ? null : nomePart,
        "docu_part": docuPart == null ? null : docuPart,
        "tipo_pess_part":
            tipoPessPart == null ? null : moedaValues.reverse[tipoPessPart],
      };
}

class RelatoSintetico030301Element {
  RelatoSintetico030301Element({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.cdSetSeg,
    this.dsSetSeg,
    this.dtConSeg,
    this.qtComSeg,
    this.tpComSeg,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String cdSetSeg;
  String dsSetSeg;
  Moeda dtConSeg;
  Moeda qtComSeg;
  String tpComSeg;

  factory RelatoSintetico030301Element.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico030301Element(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        cdSetSeg: json["cd_set_seg"] == null ? null : json["cd_set_seg"],
        dsSetSeg: json["ds_set_seg"] == null ? null : json["ds_set_seg"],
        dtConSeg: json["dt_con_seg"] == null
            ? null
            : moedaValues.map[json["dt_con_seg"]],
        qtComSeg: json["qt_com_seg"] == null
            ? null
            : moedaValues.map[json["qt_com_seg"]],
        tpComSeg: json["tp_com_seg"] == null ? null : json["tp_com_seg"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cd_set_seg": cdSetSeg == null ? null : cdSetSeg,
        "ds_set_seg": dsSetSeg == null ? null : dsSetSeg,
        "dt_con_seg": dtConSeg == null ? null : moedaValues.reverse[dtConSeg],
        "qt_com_seg": qtComSeg == null ? null : moedaValues.reverse[qtComSeg],
        "tp_com_seg": tpComSeg == null ? null : tpComSeg,
      };
}

class RelatoSintetico030303Element {
  RelatoSintetico030303Element({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.codDescricao,
    this.descricao,
    this.dtCons,
    this.cnpjCons,
    this.filialCons,
    this.digCons,
    this.rzscCons,
    this.qtdeCons,
    this.tpCons,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String codDescricao;
  String descricao;
  Moeda dtCons;
  Moeda cnpjCons;
  String filialCons;
  String digCons;
  String rzscCons;
  String qtdeCons;
  String tpCons;

  factory RelatoSintetico030303Element.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico030303Element(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        codDescricao:
            json["cod_descricao"] == null ? null : json["cod_descricao"],
        descricao: json["descricao"] == null ? null : json["descricao"],
        dtCons:
            json["dt_cons"] == null ? null : moedaValues.map[json["dt_cons"]],
        cnpjCons: json["cnpj_cons"] == null
            ? null
            : moedaValues.map[json["cnpj_cons"]],
        filialCons: json["filial_cons"] == null ? null : json["filial_cons"],
        digCons: json["dig_cons"] == null ? null : json["dig_cons"],
        rzscCons: json["rzsc_cons"] == null ? null : json["rzsc_cons"],
        qtdeCons: json["qtde_cons"] == null ? null : json["qtde_cons"],
        tpCons: json["tp_cons"] == null ? null : json["tp_cons"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "cod_descricao": codDescricao == null ? null : codDescricao,
        "descricao": descricao == null ? null : descricao,
        "dt_cons": dtCons == null ? null : moedaValues.reverse[dtCons],
        "cnpj_cons": cnpjCons == null ? null : moedaValues.reverse[cnpjCons],
        "filial_cons": filialCons == null ? null : filialCons,
        "dig_cons": digCons == null ? null : digCons,
        "rzsc_cons": rzscCons == null ? null : rzscCons,
        "qtde_cons": qtdeCons == null ? null : qtdeCons,
        "tp_cons": tpCons == null ? null : tpCons,
      };
}

class RelatoSintetico030399 {
  RelatoSintetico030399({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.dtAtualiza,
    this.reservadoSerasa,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String dtAtualiza;
  String reservadoSerasa;

  factory RelatoSintetico030399.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico030399(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        dtAtualiza: json["dt_atualiza"] == null ? null : json["dt_atualiza"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "dt_atualiza": dtAtualiza == null ? null : dtAtualiza,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
      };
}

class RelatoSintetico040101 {
  RelatoSintetico040101({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.qtdeocor,
    this.ultocor,
    this.dataPef,
    this.tituloPef,
    this.avalPef,
    this.valor,
    this.contra,
    this.origem,
    this.filial,
    this.msgsubjudice,
    this.pracaPef,
    this.distrPef,
    this.varaPef,
    this.dataSubPef,
    this.procPef,
    this.cdnatuPef,
    this.reservado,
    this.msgSubjud,
    this.qtdevalo,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String qtdeocor;
  String ultocor;
  Moeda dataPef;
  Moeda tituloPef;
  String avalPef;
  String valor;
  String contra;
  String origem;
  String filial;
  String msgsubjudice;
  String pracaPef;
  String distrPef;
  String varaPef;
  String dataSubPef;
  String procPef;
  String cdnatuPef;
  String reservado;
  String msgSubjud;
  String qtdevalo;

  factory RelatoSintetico040101.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040101(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        qtdeocor: json["qtdeocor"] == null ? null : json["qtdeocor"],
        ultocor: json["ultocor"] == null ? null : json["ultocor"],
        dataPef:
            json["data_pef"] == null ? null : moedaValues.map[json["data_pef"]],
        tituloPef: json["titulo_pef"] == null
            ? null
            : moedaValues.map[json["titulo_pef"]],
        avalPef: json["aval_pef"] == null ? null : json["aval_pef"],
        valor: json["valor"] == null ? null : json["valor"],
        contra: json["contra"] == null ? null : json["contra"],
        origem: json["origem"] == null ? null : json["origem"],
        filial: json["filial"] == null ? null : json["filial"],
        msgsubjudice:
            json["msgsubjudice"] == null ? null : json["msgsubjudice"],
        pracaPef: json["praca_pef"] == null ? null : json["praca_pef"],
        distrPef: json["distr_pef"] == null ? null : json["distr_pef"],
        varaPef: json["vara_pef"] == null ? null : json["vara_pef"],
        dataSubPef: json["data_sub_pef"] == null ? null : json["data_sub_pef"],
        procPef: json["proc_pef"] == null ? null : json["proc_pef"],
        cdnatuPef: json["cdnatu_pef"] == null ? null : json["cdnatu_pef"],
        reservado: json["reservado"] == null ? null : json["reservado"],
        msgSubjud: json["msg_subjud"] == null ? null : json["msg_subjud"],
        qtdevalo: json["qtdevalo"] == null ? null : json["qtdevalo"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "qtdeocor": qtdeocor == null ? null : qtdeocor,
        "ultocor": ultocor == null ? null : ultocor,
        "data_pef": dataPef == null ? null : moedaValues.reverse[dataPef],
        "titulo_pef": tituloPef == null ? null : moedaValues.reverse[tituloPef],
        "aval_pef": avalPef == null ? null : avalPef,
        "valor": valor == null ? null : valor,
        "contra": contra == null ? null : contra,
        "origem": origem == null ? null : origem,
        "filial": filial == null ? null : filial,
        "msgsubjudice": msgsubjudice == null ? null : msgsubjudice,
        "praca_pef": pracaPef == null ? null : pracaPef,
        "distr_pef": distrPef == null ? null : distrPef,
        "vara_pef": varaPef == null ? null : varaPef,
        "data_sub_pef": dataSubPef == null ? null : dataSubPef,
        "proc_pef": procPef == null ? null : procPef,
        "cdnatu_pef": cdnatuPef == null ? null : cdnatuPef,
        "reservado": reservado == null ? null : reservado,
        "msg_subjud": msgSubjud == null ? null : msgSubjud,
        "qtdevalo": qtdevalo == null ? null : qtdevalo,
      };
}

class RelatoSintetico040102 {
  RelatoSintetico040102({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.qtdeocor,
    this.ultocor,
    this.dataRef,
    this.tituloRef,
    this.avalRef,
    this.valor,
    this.contra,
    this.origem,
    this.filial,
    this.msgsubjudice,
    this.pracaRef,
    this.distrRef,
    this.varaRef,
    this.dataSubRef,
    this.procRef,
    this.cdnatuRef,
    this.reservado,
    this.msgSubjud,
    this.qtdevalo,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String qtdeocor;
  String ultocor;
  Moeda dataRef;
  Moeda tituloRef;
  String avalRef;
  String valor;
  String contra;
  String origem;
  String filial;
  String msgsubjudice;
  String pracaRef;
  String distrRef;
  String varaRef;
  String dataSubRef;
  String procRef;
  String cdnatuRef;
  String reservado;
  String msgSubjud;
  String qtdevalo;

  factory RelatoSintetico040102.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040102(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        qtdeocor: json["qtdeocor"] == null ? null : json["qtdeocor"],
        ultocor: json["ultocor"] == null ? null : json["ultocor"],
        dataRef:
            json["data_ref"] == null ? null : moedaValues.map[json["data_ref"]],
        tituloRef: json["titulo_ref"] == null
            ? null
            : moedaValues.map[json["titulo_ref"]],
        avalRef: json["aval_ref"] == null ? null : json["aval_ref"],
        valor: json["valor"] == null ? null : json["valor"],
        contra: json["contra"] == null ? null : json["contra"],
        origem: json["origem"] == null ? null : json["origem"],
        filial: json["filial"] == null ? null : json["filial"],
        msgsubjudice:
            json["msgsubjudice"] == null ? null : json["msgsubjudice"],
        pracaRef: json["praca_ref"] == null ? null : json["praca_ref"],
        distrRef: json["distr_ref"] == null ? null : json["distr_ref"],
        varaRef: json["vara_ref"] == null ? null : json["vara_ref"],
        dataSubRef: json["data_sub_ref"] == null ? null : json["data_sub_ref"],
        procRef: json["proc_ref"] == null ? null : json["proc_ref"],
        cdnatuRef: json["cdnatu_ref"] == null ? null : json["cdnatu_ref"],
        reservado: json["reservado"] == null ? null : json["reservado"],
        msgSubjud: json["msg_subjud"] == null ? null : json["msg_subjud"],
        qtdevalo: json["qtdevalo"] == null ? null : json["qtdevalo"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "qtdeocor": qtdeocor == null ? null : qtdeocor,
        "ultocor": ultocor == null ? null : ultocor,
        "data_ref": dataRef == null ? null : moedaValues.reverse[dataRef],
        "titulo_ref": tituloRef == null ? null : moedaValues.reverse[tituloRef],
        "aval_ref": avalRef == null ? null : avalRef,
        "valor": valor == null ? null : valor,
        "contra": contra == null ? null : contra,
        "origem": origem == null ? null : origem,
        "filial": filial == null ? null : filial,
        "msgsubjudice": msgsubjudice == null ? null : msgsubjudice,
        "praca_ref": pracaRef == null ? null : pracaRef,
        "distr_ref": distrRef == null ? null : distrRef,
        "vara_ref": varaRef == null ? null : varaRef,
        "data_sub_ref": dataSubRef == null ? null : dataSubRef,
        "proc_ref": procRef == null ? null : procRef,
        "cdnatu_ref": cdnatuRef == null ? null : cdnatuRef,
        "reservado": reservado == null ? null : reservado,
        "msg_subjud": msgSubjud == null ? null : msgSubjud,
        "qtdevalo": qtdevalo == null ? null : qtdevalo,
      };
}

class RelatoSintetico040201 {
  RelatoSintetico040201({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.grafia,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String grafia;

  factory RelatoSintetico040201.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040201(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        grafia: json["grafia"] == null ? null : json["grafia"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "grafia": grafia == null ? null : grafia,
      };
}

class RelatoSintetico040202 {
  RelatoSintetico040202({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.qtdeRes,
    this.disc,
    this.mesiDes,
    this.mesi,
    this.anoi,
    this.mesfDes,
    this.mesf,
    this.anof,
    this.moed,
    this.valo,
    this.orig,
    this.agpr,
    this.totalRes,
    this.natureza,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String qtdeRes;
  String disc;
  Moeda mesiDes;
  Moeda mesi;
  String anoi;
  String mesfDes;
  String mesf;
  String anof;
  String moed;
  String valo;
  String orig;
  String agpr;
  String totalRes;
  String natureza;

  factory RelatoSintetico040202.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040202(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        qtdeRes: json["qtde_res"] == null ? null : json["qtde_res"],
        disc: json["disc"] == null ? null : json["disc"],
        mesiDes:
            json["mesi_des"] == null ? null : moedaValues.map[json["mesi_des"]],
        mesi: json["mesi"] == null ? null : moedaValues.map[json["mesi"]],
        anoi: json["anoi"] == null ? null : json["anoi"],
        mesfDes: json["mesf_des"] == null ? null : json["mesf_des"],
        mesf: json["mesf"] == null ? null : json["mesf"],
        anof: json["anof"] == null ? null : json["anof"],
        moed: json["moed"] == null ? null : json["moed"],
        valo: json["valo"] == null ? null : json["valo"],
        orig: json["orig"] == null ? null : json["orig"],
        agpr: json["agpr"] == null ? null : json["agpr"],
        totalRes: json["total_res"] == null ? null : json["total_res"],
        natureza: json["natureza"] == null ? null : json["natureza"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "qtde_res": qtdeRes == null ? null : qtdeRes,
        "disc": disc == null ? null : disc,
        "mesi_des": mesiDes == null ? null : moedaValues.reverse[mesiDes],
        "mesi": mesi == null ? null : moedaValues.reverse[mesi],
        "anoi": anoi == null ? null : anoi,
        "mesf_des": mesfDes == null ? null : mesfDes,
        "mesf": mesf == null ? null : mesf,
        "anof": anof == null ? null : anof,
        "moed": moed == null ? null : moed,
        "valo": valo == null ? null : valo,
        "orig": orig == null ? null : orig,
        "agpr": agpr == null ? null : agpr,
        "total_res": totalRes == null ? null : totalRes,
        "natureza": natureza == null ? null : natureza,
      };
}

class RelatoSintetico040301 {
  RelatoSintetico040301({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocorProt,
    this.dataProt,
    this.moedProt,
    this.valoProt,
    this.cart,
    this.cidaProt,
    this.ufProt,
    this.msgsubjudice,
    this.pracaPro,
    this.distrPro,
    this.varaPro,
    this.dataPro,
    this.procPro,
    this.cdnatu,
    this.reservadoSerasa,
    this.tpanueProt,
    this.dtanueProt,
    this.msgSubjud,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocorProt;
  String dataProt;
  Moeda moedProt;
  Moeda valoProt;
  String cart;
  String cidaProt;
  String ufProt;
  String msgsubjudice;
  String pracaPro;
  String distrPro;
  String varaPro;
  String dataPro;
  String procPro;
  String cdnatu;
  String reservadoSerasa;
  String tpanueProt;
  String dtanueProt;
  String msgSubjud;

  factory RelatoSintetico040301.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040301(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocorProt: json["ocor_prot"] == null ? null : json["ocor_prot"],
        dataProt: json["data_prot"] == null ? null : json["data_prot"],
        moedProt: json["moed_prot"] == null
            ? null
            : moedaValues.map[json["moed_prot"]],
        valoProt: json["valo_prot"] == null
            ? null
            : moedaValues.map[json["valo_prot"]],
        cart: json["cart"] == null ? null : json["cart"],
        cidaProt: json["cida_prot"] == null ? null : json["cida_prot"],
        ufProt: json["uf_prot"] == null ? null : json["uf_prot"],
        msgsubjudice:
            json["msgsubjudice"] == null ? null : json["msgsubjudice"],
        pracaPro: json["praca_pro"] == null ? null : json["praca_pro"],
        distrPro: json["distr_pro"] == null ? null : json["distr_pro"],
        varaPro: json["vara_pro"] == null ? null : json["vara_pro"],
        dataPro: json["data_pro"] == null ? null : json["data_pro"],
        procPro: json["proc_pro"] == null ? null : json["proc_pro"],
        cdnatu: json["cdnatu"] == null ? null : json["cdnatu"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
        tpanueProt: json["tpanue_prot"] == null ? null : json["tpanue_prot"],
        dtanueProt: json["dtanue_prot"] == null ? null : json["dtanue_prot"],
        msgSubjud: json["msg_subjud"] == null ? null : json["msg_subjud"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor_prot": ocorProt == null ? null : ocorProt,
        "data_prot": dataProt == null ? null : dataProt,
        "moed_prot": moedProt == null ? null : moedaValues.reverse[moedProt],
        "valo_prot": valoProt == null ? null : moedaValues.reverse[valoProt],
        "cart": cart == null ? null : cart,
        "cida_prot": cidaProt == null ? null : cidaProt,
        "uf_prot": ufProt == null ? null : ufProt,
        "msgsubjudice": msgsubjudice == null ? null : msgsubjudice,
        "praca_pro": pracaPro == null ? null : pracaPro,
        "distr_pro": distrPro == null ? null : distrPro,
        "vara_pro": varaPro == null ? null : varaPro,
        "data_pro": dataPro == null ? null : dataPro,
        "proc_pro": procPro == null ? null : procPro,
        "cdnatu": cdnatu == null ? null : cdnatu,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
        "tpanue_prot": tpanueProt == null ? null : tpanueProt,
        "dtanue_prot": dtanueProt == null ? null : dtanueProt,
        "msg_subjud": msgSubjud == null ? null : msgSubjud,
      };
}

class RelatoSintetico040401 {
  RelatoSintetico040401({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocorAcao,
    this.dataAcao,
    this.natu,
    this.avalAcao,
    this.moedAcao,
    this.valoAcao,
    this.dist,
    this.varaAcao,
    this.cidaAcao,
    this.ufAcao,
    this.msgsubjudice,
    this.pracaAco,
    this.distrAco,
    this.varaAco,
    this.dataAco,
    this.procAco,
    this.cdnatuAco,
    this.reservadoSerasa,
    this.msgSubjud,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocorAcao;
  String dataAcao;
  Moeda natu;
  Moeda avalAcao;
  String moedAcao;
  String valoAcao;
  String dist;
  String varaAcao;
  String cidaAcao;
  String ufAcao;
  String msgsubjudice;
  String pracaAco;
  String distrAco;
  String varaAco;
  String dataAco;
  String procAco;
  String cdnatuAco;
  String reservadoSerasa;
  String msgSubjud;

  factory RelatoSintetico040401.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040401(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocorAcao: json["ocor_acao"] == null ? null : json["ocor_acao"],
        dataAcao: json["data_acao"] == null ? null : json["data_acao"],
        natu: json["natu"] == null ? null : moedaValues.map[json["natu"]],
        avalAcao: json["aval_acao"] == null
            ? null
            : moedaValues.map[json["aval_acao"]],
        moedAcao: json["moed_acao"] == null ? null : json["moed_acao"],
        valoAcao: json["valo_acao"] == null ? null : json["valo_acao"],
        dist: json["dist"] == null ? null : json["dist"],
        varaAcao: json["vara_acao"] == null ? null : json["vara_acao"],
        cidaAcao: json["cida_acao"] == null ? null : json["cida_acao"],
        ufAcao: json["uf_acao"] == null ? null : json["uf_acao"],
        msgsubjudice:
            json["msgsubjudice"] == null ? null : json["msgsubjudice"],
        pracaAco: json["praca_aco"] == null ? null : json["praca_aco"],
        distrAco: json["distr_aco"] == null ? null : json["distr_aco"],
        varaAco: json["vara_aco"] == null ? null : json["vara_aco"],
        dataAco: json["data_aco"] == null ? null : json["data_aco"],
        procAco: json["proc_aco"] == null ? null : json["proc_aco"],
        cdnatuAco: json["cdnatu_aco"] == null ? null : json["cdnatu_aco"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
        msgSubjud: json["msg_subjud"] == null ? null : json["msg_subjud"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor_acao": ocorAcao == null ? null : ocorAcao,
        "data_acao": dataAcao == null ? null : dataAcao,
        "natu": natu == null ? null : moedaValues.reverse[natu],
        "aval_acao": avalAcao == null ? null : moedaValues.reverse[avalAcao],
        "moed_acao": moedAcao == null ? null : moedAcao,
        "valo_acao": valoAcao == null ? null : valoAcao,
        "dist": dist == null ? null : dist,
        "vara_acao": varaAcao == null ? null : varaAcao,
        "cida_acao": cidaAcao == null ? null : cidaAcao,
        "uf_acao": ufAcao == null ? null : ufAcao,
        "msgsubjudice": msgsubjudice == null ? null : msgsubjudice,
        "praca_aco": pracaAco == null ? null : pracaAco,
        "distr_aco": distrAco == null ? null : distrAco,
        "vara_aco": varaAco == null ? null : varaAco,
        "data_aco": dataAco == null ? null : dataAco,
        "proc_aco": procAco == null ? null : procAco,
        "cdnatu_aco": cdnatuAco == null ? null : cdnatuAco,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
        "msg_subjud": msgSubjud == null ? null : msgSubjud,
      };
}

class RelatoSintetico040501 {
  RelatoSintetico040501({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocorPie,
    this.dataPie,
    this.tipoPie,
    this.cnpj040501,
    this.empresaPie,
    this.cdnatuPie,
    this.reservadoSerasa,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocorPie;
  String dataPie;
  Moeda tipoPie;
  Moeda cnpj040501;
  String empresaPie;
  String cdnatuPie;
  String reservadoSerasa;

  factory RelatoSintetico040501.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040501(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocorPie: json["ocor_pie"] == null ? null : json["ocor_pie"],
        dataPie: json["data_pie"] == null ? null : json["data_pie"],
        tipoPie:
            json["tipo_pie"] == null ? null : moedaValues.map[json["tipo_pie"]],
        cnpj040501: json["cnpj_040501"] == null
            ? null
            : moedaValues.map[json["cnpj_040501"]],
        empresaPie: json["empresa_pie"] == null ? null : json["empresa_pie"],
        cdnatuPie: json["cdnatu_pie"] == null ? null : json["cdnatu_pie"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor_pie": ocorPie == null ? null : ocorPie,
        "data_pie": dataPie == null ? null : dataPie,
        "tipo_pie": tipoPie == null ? null : moedaValues.reverse[tipoPie],
        "cnpj_040501":
            cnpj040501 == null ? null : moedaValues.reverse[cnpj040501],
        "empresa_pie": empresaPie == null ? null : empresaPie,
        "cdnatu_pie": cdnatuPie == null ? null : cdnatuPie,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
      };
}

class RelatoSintetico040601 {
  RelatoSintetico040601({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocorFac,
    this.dataFac,
    this.tipoFac,
    this.origemFac,
    this.varaFac,
    this.cidaFac,
    this.ufFac,
    this.cdnatuFac,
    this.reservadoSerasa,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocorFac;
  String dataFac;
  Moeda tipoFac;
  Moeda origemFac;
  String varaFac;
  String cidaFac;
  String ufFac;
  String cdnatuFac;
  String reservadoSerasa;

  factory RelatoSintetico040601.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040601(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocorFac: json["ocor_fac"] == null ? null : json["ocor_fac"],
        dataFac: json["data_fac"] == null ? null : json["data_fac"],
        tipoFac:
            json["tipo_fac"] == null ? null : moedaValues.map[json["tipo_fac"]],
        origemFac: json["origem_fac"] == null
            ? null
            : moedaValues.map[json["origem_fac"]],
        varaFac: json["vara_fac"] == null ? null : json["vara_fac"],
        cidaFac: json["cida_fac"] == null ? null : json["cida_fac"],
        ufFac: json["uf_fac"] == null ? null : json["uf_fac"],
        cdnatuFac: json["cdnatu_fac"] == null ? null : json["cdnatu_fac"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor_fac": ocorFac == null ? null : ocorFac,
        "data_fac": dataFac == null ? null : dataFac,
        "tipo_fac": tipoFac == null ? null : moedaValues.reverse[tipoFac],
        "origem_fac": origemFac == null ? null : moedaValues.reverse[origemFac],
        "vara_fac": varaFac == null ? null : varaFac,
        "cida_fac": cidaFac == null ? null : cidaFac,
        "uf_fac": ufFac == null ? null : ufFac,
        "cdnatu_fac": cdnatuFac == null ? null : cdnatuFac,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
      };
}

class RelatoSintetico040701 {
  RelatoSintetico040701({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocorDiv,
    this.dataDiv,
    this.modali,
    this.moedDiv,
    this.valoDiv,
    this.tituloDiv,
    this.instfi,
    this.localDiv,
    this.cdnatuDiv,
    this.reservadoSerasa,
    this.msgsubjudice,
    this.pracaDiv,
    this.distrDiv,
    this.varaDiv,
    this.datasubDiv,
    this.procDiv,
    this.msgSubjud,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocorDiv;
  String dataDiv;
  Moeda modali;
  Moeda moedDiv;
  String valoDiv;
  String tituloDiv;
  String instfi;
  String localDiv;
  String cdnatuDiv;
  String reservadoSerasa;
  String msgsubjudice;
  String pracaDiv;
  String distrDiv;
  String varaDiv;
  String datasubDiv;
  String procDiv;
  String msgSubjud;

  factory RelatoSintetico040701.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040701(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocorDiv: json["ocor_div"] == null ? null : json["ocor_div"],
        dataDiv: json["data_div"] == null ? null : json["data_div"],
        modali: json["modali"] == null ? null : moedaValues.map[json["modali"]],
        moedDiv:
            json["moed_div"] == null ? null : moedaValues.map[json["moed_div"]],
        valoDiv: json["valo_div"] == null ? null : json["valo_div"],
        tituloDiv: json["titulo_div"] == null ? null : json["titulo_div"],
        instfi: json["instfi"] == null ? null : json["instfi"],
        localDiv: json["local_div"] == null ? null : json["local_div"],
        cdnatuDiv: json["cdnatu_div"] == null ? null : json["cdnatu_div"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
        msgsubjudice:
            json["msgsubjudice"] == null ? null : json["msgsubjudice"],
        pracaDiv: json["praca_div"] == null ? null : json["praca_div"],
        distrDiv: json["distr_div"] == null ? null : json["distr_div"],
        varaDiv: json["vara_div"] == null ? null : json["vara_div"],
        datasubDiv: json["datasub_div"] == null ? null : json["datasub_div"],
        procDiv: json["proc_div"] == null ? null : json["proc_div"],
        msgSubjud: json["msg_subjud"] == null ? null : json["msg_subjud"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor_div": ocorDiv == null ? null : ocorDiv,
        "data_div": dataDiv == null ? null : dataDiv,
        "modali": modali == null ? null : moedaValues.reverse[modali],
        "moed_div": moedDiv == null ? null : moedaValues.reverse[moedDiv],
        "valo_div": valoDiv == null ? null : valoDiv,
        "titulo_div": tituloDiv == null ? null : tituloDiv,
        "instfi": instfi == null ? null : instfi,
        "local_div": localDiv == null ? null : localDiv,
        "cdnatu_div": cdnatuDiv == null ? null : cdnatuDiv,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
        "msgsubjudice": msgsubjudice == null ? null : msgsubjudice,
        "praca_div": pracaDiv == null ? null : pracaDiv,
        "distr_div": distrDiv == null ? null : distrDiv,
        "vara_div": varaDiv == null ? null : varaDiv,
        "datasub_div": datasubDiv == null ? null : datasubDiv,
        "proc_div": procDiv == null ? null : procDiv,
        "msg_subjud": msgSubjud == null ? null : msgSubjud,
      };
}

class RelatoSintetico040801 {
  RelatoSintetico040801({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocorAchei,
    this.dataAchei,
    this.chequeAchei,
    this.alin,
    this.qtdeAchei,
    this.moedAchei,
    this.valoAchei,
    this.bancoAchei,
    this.agencAchei,
    this.cidaAchei,
    this.ufAchei,
    this.cdnatuAchei,
    this.reservadoSerasa,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocorAchei;
  String dataAchei;
  Moeda chequeAchei;
  Moeda alin;
  String qtdeAchei;
  String moedAchei;
  String valoAchei;
  String bancoAchei;
  String agencAchei;
  String cidaAchei;
  String ufAchei;
  String cdnatuAchei;
  String reservadoSerasa;

  factory RelatoSintetico040801.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040801(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocorAchei: json["ocor_achei"] == null ? null : json["ocor_achei"],
        dataAchei: json["data_achei"] == null ? null : json["data_achei"],
        chequeAchei: json["cheque_achei"] == null
            ? null
            : moedaValues.map[json["cheque_achei"]],
        alin: json["alin"] == null ? null : moedaValues.map[json["alin"]],
        qtdeAchei: json["qtde_achei"] == null ? null : json["qtde_achei"],
        moedAchei: json["moed_achei"] == null ? null : json["moed_achei"],
        valoAchei: json["valo_achei"] == null ? null : json["valo_achei"],
        bancoAchei: json["banco_achei"] == null ? null : json["banco_achei"],
        agencAchei: json["agenc_achei"] == null ? null : json["agenc_achei"],
        cidaAchei: json["cida_achei"] == null ? null : json["cida_achei"],
        ufAchei: json["uf_achei"] == null ? null : json["uf_achei"],
        cdnatuAchei: json["cdnatu_achei"] == null ? null : json["cdnatu_achei"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor_achei": ocorAchei == null ? null : ocorAchei,
        "data_achei": dataAchei == null ? null : dataAchei,
        "cheque_achei":
            chequeAchei == null ? null : moedaValues.reverse[chequeAchei],
        "alin": alin == null ? null : moedaValues.reverse[alin],
        "qtde_achei": qtdeAchei == null ? null : qtdeAchei,
        "moed_achei": moedAchei == null ? null : moedAchei,
        "valo_achei": valoAchei == null ? null : valoAchei,
        "banco_achei": bancoAchei == null ? null : bancoAchei,
        "agenc_achei": agencAchei == null ? null : agencAchei,
        "cida_achei": cidaAchei == null ? null : cidaAchei,
        "uf_achei": ufAchei == null ? null : ufAchei,
        "cdnatu_achei": cdnatuAchei == null ? null : cdnatuAchei,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
      };
}

class RelatoSintetico040901 {
  RelatoSintetico040901({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.ocor,
    this.dataCcf,
    this.cheque,
    this.qtde,
    this.bancoCcf,
    this.agencCcf,
    this.cidaCcf,
    this.ufCcf,
    this.cdnatuAchei,
    this.reservadoSerasa,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String ocor;
  String dataCcf;
  Moeda cheque;
  Moeda qtde;
  String bancoCcf;
  String agencCcf;
  String cidaCcf;
  String ufCcf;
  String cdnatuAchei;
  String reservadoSerasa;

  factory RelatoSintetico040901.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico040901(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        ocor: json["ocor"] == null ? null : json["ocor"],
        dataCcf: json["data_ccf"] == null ? null : json["data_ccf"],
        cheque: json["cheque"] == null ? null : moedaValues.map[json["cheque"]],
        qtde: json["qtde"] == null ? null : moedaValues.map[json["qtde"]],
        bancoCcf: json["banco_ccf"] == null ? null : json["banco_ccf"],
        agencCcf: json["agenc_ccf"] == null ? null : json["agenc_ccf"],
        cidaCcf: json["cida_ccf"] == null ? null : json["cida_ccf"],
        ufCcf: json["uf_ccf"] == null ? null : json["uf_ccf"],
        cdnatuAchei: json["cdnatu_achei"] == null ? null : json["cdnatu_achei"],
        reservadoSerasa:
            json["reservado_serasa"] == null ? null : json["reservado_serasa"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "ocor": ocor == null ? null : ocor,
        "data_ccf": dataCcf == null ? null : dataCcf,
        "cheque": cheque == null ? null : moedaValues.reverse[cheque],
        "qtde": qtde == null ? null : moedaValues.reverse[qtde],
        "banco_ccf": bancoCcf == null ? null : bancoCcf,
        "agenc_ccf": agencCcf == null ? null : agencCcf,
        "cida_ccf": cidaCcf == null ? null : cidaCcf,
        "uf_ccf": ufCcf == null ? null : ufCcf,
        "cdnatu_achei": cdnatuAchei == null ? null : cdnatuAchei,
        "reservado_serasa": reservadoSerasa == null ? null : reservadoSerasa,
      };
}

class RelatoSintetico041000 {
  RelatoSintetico041000({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.qtdoco,
    this.qtdultoco,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String qtdoco;
  String qtdultoco;

  factory RelatoSintetico041000.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico041000(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        qtdoco: json["qtdoco"] == null ? null : json["qtdoco"],
        qtdultoco: json["qtdultoco"] == null ? null : json["qtdultoco"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "qtdoco": qtdoco == null ? null : qtdoco,
        "qtdultoco": qtdultoco == null ? null : qtdultoco,
      };
}

class RelatoSintetico041001 {
  RelatoSintetico041001({
    this.cnpj,
    this.idinf,
    this.bcfic,
    this.tpinf,
    this.data,
    this.bancoRech,
    this.agencRech,
    this.conta,
    this.dgcon,
    this.chini,
    this.chfin,
    this.motivo,
    this.conta12,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao bcfic;
  Compacta tpinf;
  String data;
  String bancoRech;
  Moeda agencRech;
  Moeda conta;
  String dgcon;
  String chini;
  String chfin;
  String motivo;
  String conta12;

  factory RelatoSintetico041001.fromJson(Map<String, dynamic> json) =>
      RelatoSintetico041001(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        bcfic: json["bcfic"] == null ? null : cdopcaoValues.map[json["bcfic"]],
        tpinf: json["tpinf"] == null ? null : compactaValues.map[json["tpinf"]],
        data: json["data"] == null ? null : json["data"],
        bancoRech: json["banco_rech"] == null ? null : json["banco_rech"],
        agencRech: json["agenc_rech"] == null
            ? null
            : moedaValues.map[json["agenc_rech"]],
        conta: json["conta"] == null ? null : moedaValues.map[json["conta"]],
        dgcon: json["dgcon"] == null ? null : json["dgcon"],
        chini: json["chini"] == null ? null : json["chini"],
        chfin: json["chfin"] == null ? null : json["chfin"],
        motivo: json["motivo"] == null ? null : json["motivo"],
        conta12: json["conta_12"] == null ? null : json["conta_12"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "bcfic": bcfic == null ? null : cdopcaoValues.reverse[bcfic],
        "tpinf": tpinf == null ? null : compactaValues.reverse[tpinf],
        "data": data == null ? null : data,
        "banco_rech": bancoRech == null ? null : bancoRech,
        "agenc_rech": agencRech == null ? null : moedaValues.reverse[agencRech],
        "conta": conta == null ? null : moedaValues.reverse[conta],
        "dgcon": dgcon == null ? null : dgcon,
        "chini": chini == null ? null : chini,
        "chfin": chfin == null ? null : chfin,
        "motivo": motivo == null ? null : motivo,
        "conta_12": conta12 == null ? null : conta12,
      };
}

class RelatoSinteticoMensagens010299A041099 {
  RelatoSinteticoMensagens010299A041099({
    this.cnpj,
    this.idinf,
    this.tpinf,
    this.fixo,
    this.mens,
  });

  Cnpj cnpj;
  Cdtran idinf;
  Cdopcao tpinf;
  Compacta fixo;
  String mens;

  factory RelatoSinteticoMensagens010299A041099.fromJson(
          Map<String, dynamic> json) =>
      RelatoSinteticoMensagens010299A041099(
        cnpj: json["cnpj"] == null ? null : cnpjValues.map[json["cnpj"]],
        idinf: json["idinf"] == null ? null : cdtranValues.map[json["idinf"]],
        tpinf: json["tpinf"] == null ? null : cdopcaoValues.map[json["tpinf"]],
        fixo: json["fixo"] == null ? null : compactaValues.map[json["fixo"]],
        mens: json["mens"] == null ? null : json["mens"],
      );

  Map<String, dynamic> toJson() => {
        "cnpj": cnpj == null ? null : cnpjValues.reverse[cnpj],
        "idinf": idinf == null ? null : cdtranValues.reverse[idinf],
        "tpinf": tpinf == null ? null : cdopcaoValues.reverse[tpinf],
        "fixo": fixo == null ? null : compactaValues.reverse[fixo],
        "mens": mens == null ? null : mens,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
