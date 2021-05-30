// To parse this JSON data, do
//
//     final serasaCpfEntity = serasaCpfEntityFromJson(jsonString);

import 'dart:convert';

List<SerasaCpfEntity> serasaCpfEntityFromJson(String str) =>
    List<SerasaCpfEntity>.from(
        json.decode(str).map((x) => SerasaCpfEntity.fromJson(x)));

String serasaCpfEntityToJson(List<SerasaCpfEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SerasaCpfEntity {
  SerasaCpfEntity({
    this.cpf,
    this.rg,
    this.dtNascimentoB001,
    this.codCidade,
    this.titular,
    this.situacao,
    this.dtAtualizacaoB001,
    this.novaSituacao,
    this.creditBureaucol,
    this.dtAtualizacaoB002,
    this.dtNascimentoB002,
    this.nomeMae,
    this.sexo,
    this.tipoDoc,
    this.numDoc,
    this.orgaoEmissor,
    this.dataEmissao,
    this.ufEmissor,
    this.estadoCivil,
    this.numDependentes,
    this.escolaridade,
    this.municipioNascimento,
    this.ufNascimento,
    this.cpfConjuge,
    this.dddResidencial,
    this.foneResidencial,
    this.dddComercial,
    this.foneComercial,
    this.ramal,
    this.celular,
    this.codCliente,
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.cidade,
    this.ufB004,
    this.cep,
    this.desdeResidencia,
    this.ocupacao,
    this.renda,
    this.serieCt,
    this.numeroCt,
    this.percentParticipacao,
    this.rendaMedia,
    this.limite1,
    this.limite98,
    this.qtdeObs,
    this.tipoTecnolog,
    this.canalVenda,
    this.valorAluguel,
    this.empresaB006,
    this.desdeEmpresa,
    this.tipoMoedaB006,
    this.tipoMoedaB354,
    this.tipoMoedaB357,
    this.profissao,
    this.cargo,
    this.empresaB352,
    this.cnpj,
    this.percentParticipacaoB352,
    this.estado,
    this.situacaoB352,
    this.dtIniPartic,
    this.dtUltAtualizacaoB352,
    this.qtdeTotal,
    this.dataAtual,
    this.dataAtualB353,
    this.qtdeAtualCred,
    this.qtdeMes1Cred,
    this.qtdeMes2Cred,
    this.qtdeMes3Cred,
    this.qtdeTotalB353,
    this.qtdeTotalCred,
    this.qtdeAtualChq,
    this.qtdeMes1Chq,
    this.qtdeMes2Chq,
    this.qtdeMes3Chq,
    this.posicao,
    this.dataFicad,
    this.dtOcorrB354,
    this.origemB354,
    this.origemB357,
    this.modalidade,
    this.valor,
    this.agencia,
    this.banco,
    this.contaCorrente,
    this.chInicial,
    this.chFinal,
    this.motivoSusta,
    this.informe,
    this.fonte,
    this.mensagem,
    this.documentoB356,
    this.tpDocto,
    this.qtdeTotalPendPag,
    this.descricaoPendPag,
    this.dataMenor,
    this.dataMaior,
    this.vlrUltima,
    this.filial,
    this.tipoPefinB357,
    this.tipoPefinB358,
    this.tipoOcor,
    this.chaveCadus,
    this.ultOcorB358,
    this.dtOcorrB358,
    this.siglaMod,
    this.principal,
    this.tipoMoedaB358,
    this.contrato,
    this.empresaOrigem,
    this.empresaFilial,
    this.qtdeOcorr,
    this.codBanco,
    this.subjudX,
    this.ufB358,
    this.qtdeTotalChqFund,
    this.descricaoChqFund,
    this.dataMenorChqFund,
    this.dataMaiorChqFund,
    this.tipoMoedaB359,
    this.valorUltimaChqFund,
    this.origemB359,
    this.agenciaB359,
    this.dtOcorrB360,
    this.numChequeB360,
    this.alinea,
    this.qtdeChqDevolv,
    this.tipoMoedaChqDevolv,
    this.valorChqDevolv,
    this.bancoChqDevolv,
    this.tipoOcorChqDevolv,
    this.chaveCadusB360,
    this.agenciaBancoB360,
    this.cidadeB360,
    this.ufB360,
    this.qtdeOcorrB360,
    this.tipoContaB360,
    this.contaB360,
    this.qtdeTotalProtesto,
    this.descricaoProtesto,
    this.dataMenorProtesto,
    this.dataMaiorProtesto,
    this.tipoMoedaB361,
    this.tipoMoedaB362,
    this.valorProtestoB361,
    this.valorProtestoB362,
    this.cidadeProtestoB361,
    this.cidadeProtestoB362,
    this.dtOcorrenciaProtestoB362,
    this.cartorioProtesto,
    this.ufProtestoB361,
    this.ufProtestoB362,
    this.qtdeOcorrProtesto,
    this.subjudiceProtesto,
    this.dataCartaAnuencia,
    this.tipoOcorrProtesto,
    this.chaveCadusProtesto,
    this.qtdeTotalAcaoJud,
    this.descricaoAcaoJud,
    this.dataMenorAcaoJud,
    this.dataMaiorAcaoJud,
    this.tipoMoedaAcaoJudB363,
    this.valorAcaoJudB363,
    this.naturezaAcaoJudB363,
    this.ufAcaoJudB363,
    this.dtOcorrAcaoJud,
    this.naturezaAcaoJudB364,
    this.principalAcaoJud,
    this.tipoMoedaAcaoJudB364,
    this.valorAcaoJudB364,
    this.distribuidorAcaoJud,
    this.vara,
    this.cidadeAcaoJud,
    this.ufAcaoJudB364,
    this.qtdeOcorrB364,
    this.subjudiceB364,
    this.tipoOcorAcaoJudB364,
    this.chaveCadusAcaoJudB364,
    this.totalOcorrFalencias,
    this.descricaoFalencias,
    this.dataMenorFalencias,
    this.dataMaiorFalencias,
    this.empresaFalencia,
    this.dataOcorrFalenciaB366,
    this.tipoOcorrFalenciaB366,
    this.cnpjPie,
    this.empresaFalenciaB366,
    this.totalOcorrFalenciaB366,
    this.qualificacaoB366,
    this.varaCivilB366,
    this.tipoOcorFalenciaB366,
    this.chaveCadusFalenciaB366,
    this.qtdeTotalConvem,
    this.descricaoConvem,
    this.dataMenorConvem,
    this.dataMaiorConvem,
    this.tipoMoedaConvem,
    this.valorUltimaConvem,
    this.origemConvem,
    this.localConvem,
    this.dataOcorrDividaVenc,
    this.modalidadeDividaVenc,
    this.tipoMoedaDividaVenc,
    this.valorDividaVenc,
    this.tituloDividaVenc,
    this.origemDividaVenc,
    this.localDividaVenc,
    this.qtdeOcorrDividaVenc,
    this.tipoOcorrDividaVenc,
    this.chaveCadusDividaVenc,
    this.tipoReg1,
    this.dddTelCreditBureau,
    this.telefoneCreditBureau,
    this.enderecoCreditBureau,
    this.bairroCreditBureau,
    this.cepCreditBureau,
    this.tipoReg2,
    this.cidadeCreditBureau,
    this.ufCreditBureau,
    this.nomeB370,
    this.dtAtualizacaoB370,
    this.a900Description,
    this.b900Description,
    this.t999Description,
    this.creditoBureauB354,
    this.resultCode,
    this.resultDescription,
  });

  String cpf;
  String rg;
  String dtNascimentoB001;
  String codCidade;
  String titular;
  String situacao;
  String dtAtualizacaoB001;
  String novaSituacao;
  String creditBureaucol;
  String dtAtualizacaoB002;
  String dtNascimentoB002;
  String nomeMae;
  String sexo;
  String tipoDoc;
  String numDoc;
  String orgaoEmissor;
  String dataEmissao;
  String ufEmissor;
  String estadoCivil;
  String numDependentes;
  String escolaridade;
  String municipioNascimento;
  String ufNascimento;
  String cpfConjuge;
  String dddResidencial;
  String foneResidencial;
  String dddComercial;
  String foneComercial;
  String ramal;
  String celular;
  String codCliente;
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String cidade;
  String ufB004;
  String cep;
  String desdeResidencia;
  String ocupacao;
  String renda;
  String serieCt;
  String numeroCt;
  String percentParticipacao;
  String rendaMedia;
  String limite1;
  String limite98;
  String qtdeObs;
  String tipoTecnolog;
  String canalVenda;
  String valorAluguel;
  String empresaB006;
  String desdeEmpresa;
  String tipoMoedaB006;
  String tipoMoedaB354;
  String tipoMoedaB357;
  String profissao;
  String cargo;
  String empresaB352;
  String cnpj;
  String percentParticipacaoB352;
  String estado;
  String situacaoB352;
  String dtIniPartic;
  String dtUltAtualizacaoB352;
  String qtdeTotal;
  String dataAtual;
  String dataAtualB353;
  String qtdeAtualCred;
  String qtdeMes1Cred;
  String qtdeMes2Cred;
  String qtdeMes3Cred;
  String qtdeTotalB353;
  String qtdeTotalCred;
  String qtdeAtualChq;
  String qtdeMes1Chq;
  String qtdeMes2Chq;
  String qtdeMes3Chq;
  String posicao;
  String dataFicad;
  String dtOcorrB354;
  String origemB354;
  String origemB357;
  String modalidade;
  String valor;
  String agencia;
  String banco;
  String contaCorrente;
  String chInicial;
  String chFinal;
  String motivoSusta;
  String informe;
  String fonte;
  String mensagem;
  String documentoB356;
  String tpDocto;
  String qtdeTotalPendPag;
  String descricaoPendPag;
  String dataMenor;
  String dataMaior;
  String vlrUltima;
  String filial;
  String tipoPefinB357;
  String tipoPefinB358;
  String tipoOcor;
  String chaveCadus;
  String ultOcorB358;
  String dtOcorrB358;
  String siglaMod;
  String principal;
  String tipoMoedaB358;
  String contrato;
  String empresaOrigem;
  String empresaFilial;
  String qtdeOcorr;
  String codBanco;
  String subjudX;
  String ufB358;
  String qtdeTotalChqFund;
  String descricaoChqFund;
  String dataMenorChqFund;
  String dataMaiorChqFund;
  String tipoMoedaB359;
  String valorUltimaChqFund;
  String origemB359;
  String agenciaB359;
  String dtOcorrB360;
  String numChequeB360;
  String alinea;
  String qtdeChqDevolv;
  String tipoMoedaChqDevolv;
  String valorChqDevolv;
  String bancoChqDevolv;
  String tipoOcorChqDevolv;
  String chaveCadusB360;
  String agenciaBancoB360;
  String cidadeB360;
  String ufB360;
  String qtdeOcorrB360;
  String tipoContaB360;
  String contaB360;
  String qtdeTotalProtesto;
  String descricaoProtesto;
  String dataMenorProtesto;
  String dataMaiorProtesto;
  String tipoMoedaB361;
  String tipoMoedaB362;
  String valorProtestoB361;
  String valorProtestoB362;
  String cidadeProtestoB361;
  String cidadeProtestoB362;
  String dtOcorrenciaProtestoB362;
  String cartorioProtesto;
  String ufProtestoB361;
  String ufProtestoB362;
  String qtdeOcorrProtesto;
  String subjudiceProtesto;
  String dataCartaAnuencia;
  String tipoOcorrProtesto;
  String chaveCadusProtesto;
  String qtdeTotalAcaoJud;
  String descricaoAcaoJud;
  String dataMenorAcaoJud;
  String dataMaiorAcaoJud;
  String tipoMoedaAcaoJudB363;
  String valorAcaoJudB363;
  String naturezaAcaoJudB363;
  String ufAcaoJudB363;
  String dtOcorrAcaoJud;
  String naturezaAcaoJudB364;
  String principalAcaoJud;
  String tipoMoedaAcaoJudB364;
  String valorAcaoJudB364;
  String distribuidorAcaoJud;
  String vara;
  String cidadeAcaoJud;
  String ufAcaoJudB364;
  String qtdeOcorrB364;
  String subjudiceB364;
  String tipoOcorAcaoJudB364;
  String chaveCadusAcaoJudB364;
  String totalOcorrFalencias;
  String descricaoFalencias;
  String dataMenorFalencias;
  String dataMaiorFalencias;
  String empresaFalencia;
  String dataOcorrFalenciaB366;
  String tipoOcorrFalenciaB366;
  String cnpjPie;
  String empresaFalenciaB366;
  String totalOcorrFalenciaB366;
  String qualificacaoB366;
  String varaCivilB366;
  String tipoOcorFalenciaB366;
  String chaveCadusFalenciaB366;
  String qtdeTotalConvem;
  String descricaoConvem;
  String dataMenorConvem;
  String dataMaiorConvem;
  String tipoMoedaConvem;
  String valorUltimaConvem;
  String origemConvem;
  String localConvem;
  String dataOcorrDividaVenc;
  String modalidadeDividaVenc;
  String tipoMoedaDividaVenc;
  String valorDividaVenc;
  String tituloDividaVenc;
  String origemDividaVenc;
  String localDividaVenc;
  String qtdeOcorrDividaVenc;
  String tipoOcorrDividaVenc;
  String chaveCadusDividaVenc;
  String tipoReg1;
  String dddTelCreditBureau;
  String telefoneCreditBureau;
  String enderecoCreditBureau;
  String bairroCreditBureau;
  String cepCreditBureau;
  String tipoReg2;
  String cidadeCreditBureau;
  String ufCreditBureau;
  String nomeB370;
  String dtAtualizacaoB370;
  String a900Description;
  String b900Description;
  String t999Description;
  List<CreditoBureauB354> creditoBureauB354;
  int resultCode;
  String resultDescription;

  factory SerasaCpfEntity.fromJson(Map<String, dynamic> json) =>
      SerasaCpfEntity(
        cpf: json["cpf"] == null ? null : json["cpf"],
        rg: json["rg"] == null ? null : json["rg"],
        dtNascimentoB001: json["dt_nascimento_b001"] == null
            ? null
            : json["dt_nascimento_b001"],
        codCidade: json["cod_cidade"] == null ? null : json["cod_cidade"],
        titular: json["titular"] == null ? null : json["titular"],
        situacao: json["situacao"] == null ? null : json["situacao"],
        dtAtualizacaoB001: json["dt_atualizacao_b001"] == null
            ? null
            : json["dt_atualizacao_b001"],
        novaSituacao:
            json["nova_situacao"] == null ? null : json["nova_situacao"],
        creditBureaucol:
            json["credit_bureaucol"] == null ? null : json["credit_bureaucol"],
        dtAtualizacaoB002: json["dt_atualizacao_b002"] == null
            ? null
            : json["dt_atualizacao_b002"],
        dtNascimentoB002: json["dt_nascimento_B002"] == null
            ? null
            : json["dt_nascimento_B002"],
        nomeMae: json["nome_mae"] == null ? null : json["nome_mae"],
        sexo: json["sexo"] == null ? null : json["sexo"],
        tipoDoc: json["tipo_doc"] == null ? null : json["tipo_doc"],
        numDoc: json["num_doc"] == null ? null : json["num_doc"],
        orgaoEmissor:
            json["orgao_emissor"] == null ? null : json["orgao_emissor"],
        dataEmissao: json["data_emissao"] == null ? null : json["data_emissao"],
        ufEmissor: json["uf_emissor"] == null ? null : json["uf_emissor"],
        estadoCivil: json["estado_civil"] == null ? null : json["estado_civil"],
        numDependentes:
            json["num_dependentes"] == null ? null : json["num_dependentes"],
        escolaridade:
            json["escolaridade"] == null ? null : json["escolaridade"],
        municipioNascimento: json["municipio_nascimento"] == null
            ? null
            : json["municipio_nascimento"],
        ufNascimento:
            json["uf_nascimento"] == null ? null : json["uf_nascimento"],
        cpfConjuge: json["cpf_conjuge"] == null ? null : json["cpf_conjuge"],
        dddResidencial:
            json["ddd_residencial"] == null ? null : json["ddd_residencial"],
        foneResidencial:
            json["fone_residencial"] == null ? null : json["fone_residencial"],
        dddComercial:
            json["ddd_comercial"] == null ? null : json["ddd_comercial"],
        foneComercial:
            json["fone_comercial"] == null ? null : json["fone_comercial"],
        ramal: json["ramal"] == null ? null : json["ramal"],
        celular: json["celular"] == null ? null : json["celular"],
        codCliente: json["cod_cliente"] == null ? null : json["cod_cliente"],
        logradouro: json["logradouro"] == null ? null : json["logradouro"],
        numero: json["numero"] == null ? null : json["numero"],
        complemento: json["complemento"] == null ? null : json["complemento"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        cidade: json["cidade"] == null ? null : json["cidade"],
        ufB004: json["uf_b004"] == null ? null : json["uf_b004"],
        cep: json["cep"] == null ? null : json["cep"],
        desdeResidencia:
            json["desde_residencia"] == null ? null : json["desde_residencia"],
        ocupacao: json["ocupacao"] == null ? null : json["ocupacao"],
        renda: json["renda"] == null ? null : json["renda"],
        serieCt: json["serie_ct"] == null ? null : json["serie_ct"],
        numeroCt: json["numero_ct"] == null ? null : json["numero_ct"],
        percentParticipacao: json["percent_participacao"] == null
            ? null
            : json["percent_participacao"],
        rendaMedia: json["renda_media"] == null ? null : json["renda_media"],
        limite1: json["limite_1"] == null ? null : json["limite_1"],
        limite98: json["limite_98"] == null ? null : json["limite_98"],
        qtdeObs: json["qtde_obs"] == null ? null : json["qtde_obs"],
        tipoTecnolog:
            json["tipo_tecnolog"] == null ? null : json["tipo_tecnolog"],
        canalVenda: json["canal_venda"] == null ? null : json["canal_venda"],
        valorAluguel:
            json["valor_aluguel"] == null ? null : json["valor_aluguel"],
        empresaB006: json["empresa_b006"] == null ? null : json["empresa_b006"],
        desdeEmpresa:
            json["desde_empresa"] == null ? null : json["desde_empresa"],
        tipoMoedaB006:
            json["tipo_moeda_b006"] == null ? null : json["tipo_moeda_b006"],
        tipoMoedaB354:
            json["tipo_moeda_b354"] == null ? null : json["tipo_moeda_b354"],
        tipoMoedaB357:
            json["tipo_moeda_b357"] == null ? null : json["tipo_moeda_b357"],
        profissao: json["profissao"] == null ? null : json["profissao"],
        cargo: json["cargo"] == null ? null : json["cargo"],
        empresaB352: json["empresa_b352"] == null ? null : json["empresa_b352"],
        cnpj: json["cnpj"] == null ? null : json["cnpj"],
        percentParticipacaoB352: json["percent_participacao_b352"] == null
            ? null
            : json["percent_participacao_b352"],
        estado: json["estado"] == null ? null : json["estado"],
        situacaoB352:
            json["situacao_b352"] == null ? null : json["situacao_b352"],
        dtIniPartic:
            json["dt_ini_partic"] == null ? null : json["dt_ini_partic"],
        dtUltAtualizacaoB352: json["dt_ult_atualizacao_b352"] == null
            ? null
            : json["dt_ult_atualizacao_b352"],
        qtdeTotal: json["qtde_total"] == null ? null : json["qtde_total"],
        dataAtual: json["data_atual"] == null ? null : json["data_atual"],
        dataAtualB353:
            json["data_atual_b353"] == null ? null : json["data_atual_b353"],
        qtdeAtualCred:
            json["qtde_atual_cred"] == null ? null : json["qtde_atual_cred"],
        qtdeMes1Cred:
            json["qtde_mes1_cred"] == null ? null : json["qtde_mes1_cred"],
        qtdeMes2Cred:
            json["qtde_mes2_cred"] == null ? null : json["qtde_mes2_cred"],
        qtdeMes3Cred:
            json["qtde_mes3_cred"] == null ? null : json["qtde_mes3_cred"],
        qtdeTotalB353:
            json["qtde_total_b353"] == null ? null : json["qtde_total_b353"],
        qtdeTotalCred:
            json["qtde_total_cred"] == null ? null : json["qtde_total_cred"],
        qtdeAtualChq:
            json["qtde_atual_chq"] == null ? null : json["qtde_atual_chq"],
        qtdeMes1Chq:
            json["qtde_mes1_chq"] == null ? null : json["qtde_mes1_chq"],
        qtdeMes2Chq:
            json["qtde_mes2_chq"] == null ? null : json["qtde_mes2_chq"],
        qtdeMes3Chq:
            json["qtde_mes3_chq"] == null ? null : json["qtde_mes3_chq"],
        posicao: json["posicao"] == null ? null : json["posicao"],
        dataFicad: json["data_ficad"] == null ? null : json["data_ficad"],
        dtOcorrB354:
            json["dt_ocorr_b354"] == null ? null : json["dt_ocorr_b354"],
        origemB354: json["origem_b354"] == null ? null : json["origem_b354"],
        origemB357: json["origem_b357"] == null ? null : json["origem_b357"],
        modalidade: json["modalidade"] == null ? null : json["modalidade"],
        valor: json["valor"] == null ? null : json["valor"],
        agencia: json["agencia"] == null ? null : json["agencia"],
        banco: json["banco"] == null ? null : json["banco"],
        contaCorrente:
            json["conta_corrente"] == null ? null : json["conta_corrente"],
        chInicial: json["ch_inicial"] == null ? null : json["ch_inicial"],
        chFinal: json["ch_final"] == null ? null : json["ch_final"],
        motivoSusta: json["motivo_susta"] == null ? null : json["motivo_susta"],
        informe: json["informe"] == null ? null : json["informe"],
        fonte: json["fonte"] == null ? null : json["fonte"],
        mensagem: json["mensagem"] == null ? null : json["mensagem"],
        documentoB356:
            json["documento_b356"] == null ? null : json["documento_b356"],
        tpDocto: json["tp_docto"] == null ? null : json["tp_docto"],
        qtdeTotalPendPag: json["qtde_total_pend_pag"] == null
            ? null
            : json["qtde_total_pend_pag"],
        descricaoPendPag: json["descricao_pend_pag"] == null
            ? null
            : json["descricao_pend_pag"],
        dataMenor: json["data_menor"] == null ? null : json["data_menor"],
        dataMaior: json["data_maior"] == null ? null : json["data_maior"],
        vlrUltima: json["vlr_ultima"] == null ? null : json["vlr_ultima"],
        filial: json["filial"] == null ? null : json["filial"],
        tipoPefinB357:
            json["tipo_pefin_b357"] == null ? null : json["tipo_pefin_b357"],
        tipoPefinB358:
            json["tipo_pefin_b358"] == null ? null : json["tipo_pefin_b358"],
        tipoOcor: json["tipo_ocor"] == null ? null : json["tipo_ocor"],
        chaveCadus: json["chave_cadus"] == null ? null : json["chave_cadus"],
        ultOcorB358:
            json["ult_ocor_b358"] == null ? null : json["ult_ocor_b358"],
        dtOcorrB358:
            json["dt_ocorr_b358"] == null ? null : json["dt_ocorr_b358"],
        siglaMod: json["sigla_mod"] == null ? null : json["sigla_mod"],
        principal: json["principal"] == null ? null : json["principal"],
        tipoMoedaB358:
            json["tipo_moeda_b358"] == null ? null : json["tipo_moeda_b358"],
        contrato: json["contrato"] == null ? null : json["contrato"],
        empresaOrigem:
            json["empresa_origem"] == null ? null : json["empresa_origem"],
        empresaFilial:
            json["empresa_filial"] == null ? null : json["empresa_filial"],
        qtdeOcorr: json["qtde_ocorr"] == null ? null : json["qtde_ocorr"],
        codBanco: json["cod_banco"] == null ? null : json["cod_banco"],
        subjudX: json["subjud_x"] == null ? null : json["subjud_x"],
        ufB358: json["uf_b358"] == null ? null : json["uf_b358"],
        qtdeTotalChqFund: json["qtde_total_chq_fund"] == null
            ? null
            : json["qtde_total_chq_fund"],
        descricaoChqFund: json["descricao_chq_fund"] == null
            ? null
            : json["descricao_chq_fund"],
        dataMenorChqFund: json["data_menor_chq_fund"] == null
            ? null
            : json["data_menor_chq_fund"],
        dataMaiorChqFund: json["data_maior_chq_fund"] == null
            ? null
            : json["data_maior_chq_fund"],
        tipoMoedaB359:
            json["tipo_moeda_b359"] == null ? null : json["tipo_moeda_b359"],
        valorUltimaChqFund: json["valor_ultima_chq_fund"] == null
            ? null
            : json["valor_ultima_chq_fund"],
        origemB359: json["origem_b359"] == null ? null : json["origem_b359"],
        agenciaB359: json["agencia_b359"] == null ? null : json["agencia_b359"],
        dtOcorrB360:
            json["dt_ocorr_b360"] == null ? null : json["dt_ocorr_b360"],
        numChequeB360:
            json["num_cheque_b360"] == null ? null : json["num_cheque_b360"],
        alinea: json["alinea"] == null ? null : json["alinea"],
        qtdeChqDevolv:
            json["qtde_chq_devolv"] == null ? null : json["qtde_chq_devolv"],
        tipoMoedaChqDevolv: json["tipo_moeda_chq_devolv"] == null
            ? null
            : json["tipo_moeda_chq_devolv"],
        valorChqDevolv:
            json["valor_chq_devolv"] == null ? null : json["valor_chq_devolv"],
        bancoChqDevolv:
            json["banco_chq_devolv"] == null ? null : json["banco_chq_devolv"],
        tipoOcorChqDevolv: json["tipo_ocor_chq_devolv"] == null
            ? null
            : json["tipo_ocor_chq_devolv"],
        chaveCadusB360:
            json["chave_cadus_b360"] == null ? null : json["chave_cadus_b360"],
        agenciaBancoB360: json["agencia_banco_b360"] == null
            ? null
            : json["agencia_banco_b360"],
        cidadeB360: json["cidade_b360"] == null ? null : json["cidade_b360"],
        ufB360: json["uf_b360"] == null ? null : json["uf_b360"],
        qtdeOcorrB360:
            json["qtde_ocorr_b360"] == null ? null : json["qtde_ocorr_b360"],
        tipoContaB360:
            json["tipo_conta_b360"] == null ? null : json["tipo_conta_b360"],
        contaB360: json["conta_b360"] == null ? null : json["conta_b360"],
        qtdeTotalProtesto: json["qtde_total_protesto"] == null
            ? null
            : json["qtde_total_protesto"],
        descricaoProtesto: json["descricao_protesto"] == null
            ? null
            : json["descricao_protesto"],
        dataMenorProtesto: json["data_menor_protesto"] == null
            ? null
            : json["data_menor_protesto"],
        dataMaiorProtesto: json["data_maior_protesto"] == null
            ? null
            : json["data_maior_protesto"],
        tipoMoedaB361:
            json["tipo_moeda_b361"] == null ? null : json["tipo_moeda_b361"],
        tipoMoedaB362:
            json["tipo_moeda_b362"] == null ? null : json["tipo_moeda_b362"],
        valorProtestoB361: json["valor_protesto_b361"] == null
            ? null
            : json["valor_protesto_b361"],
        valorProtestoB362: json["valor_protesto_b362"] == null
            ? null
            : json["valor_protesto_b362"],
        cidadeProtestoB361: json["cidade_protesto_b361"] == null
            ? null
            : json["cidade_protesto_b361"],
        cidadeProtestoB362: json["cidade_protesto_b362"] == null
            ? null
            : json["cidade_protesto_b362"],
        dtOcorrenciaProtestoB362: json["dt_ocorrencia_protesto_b362"] == null
            ? null
            : json["dt_ocorrencia_protesto_b362"],
        cartorioProtesto: json["cartorio_protesto"] == null
            ? null
            : json["cartorio_protesto"],
        ufProtestoB361:
            json["uf_protesto_b361"] == null ? null : json["uf_protesto_b361"],
        ufProtestoB362:
            json["uf_protesto_b362"] == null ? null : json["uf_protesto_b362"],
        qtdeOcorrProtesto: json["qtde_ocorr_protesto"] == null
            ? null
            : json["qtde_ocorr_protesto"],
        subjudiceProtesto: json["subjudice_protesto"] == null
            ? null
            : json["subjudice_protesto"],
        dataCartaAnuencia: json["data_carta_anuencia"] == null
            ? null
            : json["data_carta_anuencia"],
        tipoOcorrProtesto: json["tipo_ocorr_protesto"] == null
            ? null
            : json["tipo_ocorr_protesto"],
        chaveCadusProtesto: json["chave_cadus_protesto"] == null
            ? null
            : json["chave_cadus_protesto"],
        qtdeTotalAcaoJud: json["qtde_total_acao_jud"] == null
            ? null
            : json["qtde_total_acao_jud"],
        descricaoAcaoJud: json["descricao_acao_jud"] == null
            ? null
            : json["descricao_acao_jud"],
        dataMenorAcaoJud: json["data_menor_acao_jud"] == null
            ? null
            : json["data_menor_acao_jud"],
        dataMaiorAcaoJud: json["data_maior_acao_jud"] == null
            ? null
            : json["data_maior_acao_jud"],
        tipoMoedaAcaoJudB363: json["tipo_moeda_acao_jud_b363"] == null
            ? null
            : json["tipo_moeda_acao_jud_b363"],
        valorAcaoJudB363: json["valor_acao_jud_b363"] == null
            ? null
            : json["valor_acao_jud_b363"],
        naturezaAcaoJudB363: json["natureza_acao_jud_b363"] == null
            ? null
            : json["natureza_acao_jud_b363"],
        ufAcaoJudB363:
            json["uf_acao_jud_b363"] == null ? null : json["uf_acao_jud_b363"],
        dtOcorrAcaoJud: json["dt_ocorr_acao_jud"] == null
            ? null
            : json["dt_ocorr_acao_jud"],
        naturezaAcaoJudB364: json["natureza_acao_jud_b364"] == null
            ? null
            : json["natureza_acao_jud_b364"],
        principalAcaoJud: json["principal_acao_jud"] == null
            ? null
            : json["principal_acao_jud"],
        tipoMoedaAcaoJudB364: json["tipo_moeda_acao_jud_b364"] == null
            ? null
            : json["tipo_moeda_acao_jud_b364"],
        valorAcaoJudB364: json["valor_acao_jud_b364"] == null
            ? null
            : json["valor_acao_jud_b364"],
        distribuidorAcaoJud: json["distribuidor_acao_jud"] == null
            ? null
            : json["distribuidor_acao_jud"],
        vara: json["vara"] == null ? null : json["vara"],
        cidadeAcaoJud:
            json["cidade_acao_jud"] == null ? null : json["cidade_acao_jud"],
        ufAcaoJudB364:
            json["uf_acao_jud_b364"] == null ? null : json["uf_acao_jud_b364"],
        qtdeOcorrB364:
            json["qtde_ocorr_b364"] == null ? null : json["qtde_ocorr_b364"],
        subjudiceB364:
            json["subjudice_b364"] == null ? null : json["subjudice_b364"],
        tipoOcorAcaoJudB364: json["tipo_ocor_acao_jud_b364"] == null
            ? null
            : json["tipo_ocor_acao_jud_b364"],
        chaveCadusAcaoJudB364: json["chave_cadus_acao_jud_b364"] == null
            ? null
            : json["chave_cadus_acao_jud_b364"],
        totalOcorrFalencias: json["total_ocorr_falencias"] == null
            ? null
            : json["total_ocorr_falencias"],
        descricaoFalencias: json["descricao_falencias"] == null
            ? null
            : json["descricao_falencias"],
        dataMenorFalencias: json["data_menor_falencias"] == null
            ? null
            : json["data_menor_falencias"],
        dataMaiorFalencias: json["data_maior_falencias"] == null
            ? null
            : json["data_maior_falencias"],
        empresaFalencia:
            json["empresa_falencia"] == null ? null : json["empresa_falencia"],
        dataOcorrFalenciaB366: json["data_ocorr_falencia_b366"] == null
            ? null
            : json["data_ocorr_falencia_b366"],
        tipoOcorrFalenciaB366: json["tipo_ocorr_falencia_b366"] == null
            ? null
            : json["tipo_ocorr_falencia_b366"],
        cnpjPie: json["cnpj_pie"] == null ? null : json["cnpj_pie"],
        empresaFalenciaB366: json["empresa_falencia_b366"] == null
            ? null
            : json["empresa_falencia_b366"],
        totalOcorrFalenciaB366: json["total_ocorr_falencia_b366"] == null
            ? null
            : json["total_ocorr_falencia_b366"],
        qualificacaoB366: json["qualificacao_b366"] == null
            ? null
            : json["qualificacao_b366"],
        varaCivilB366:
            json["vara_civil_b366"] == null ? null : json["vara_civil_b366"],
        tipoOcorFalenciaB366: json["tipo_ocor_falencia_b366"] == null
            ? null
            : json["tipo_ocor_falencia_b366"],
        chaveCadusFalenciaB366: json["chave_cadus_falencia_b366"] == null
            ? null
            : json["chave_cadus_falencia_b366"],
        qtdeTotalConvem: json["qtde_total_convem"] == null
            ? null
            : json["qtde_total_convem"],
        descricaoConvem:
            json["descricao_convem"] == null ? null : json["descricao_convem"],
        dataMenorConvem: json["data_menor_convem"] == null
            ? null
            : json["data_menor_convem"],
        dataMaiorConvem: json["data_maior_convem"] == null
            ? null
            : json["data_maior_convem"],
        tipoMoedaConvem: json["tipo_moeda_convem"] == null
            ? null
            : json["tipo_moeda_convem"],
        valorUltimaConvem: json["valor_ultima_convem"] == null
            ? null
            : json["valor_ultima_convem"],
        origemConvem:
            json["origem_convem"] == null ? null : json["origem_convem"],
        localConvem: json["local_convem"] == null ? null : json["local_convem"],
        dataOcorrDividaVenc: json["data_ocorr_divida_venc"] == null
            ? null
            : json["data_ocorr_divida_venc"],
        modalidadeDividaVenc: json["modalidade_divida_venc"] == null
            ? null
            : json["modalidade_divida_venc"],
        tipoMoedaDividaVenc: json["tipo_moeda_divida_venc"] == null
            ? null
            : json["tipo_moeda_divida_venc"],
        valorDividaVenc: json["valor_divida_venc"] == null
            ? null
            : json["valor_divida_venc"],
        tituloDividaVenc: json["titulo_divida_venc"] == null
            ? null
            : json["titulo_divida_venc"],
        origemDividaVenc: json["origem_divida_venc"] == null
            ? null
            : json["origem_divida_venc"],
        localDividaVenc: json["local_divida_venc"] == null
            ? null
            : json["local_divida_venc"],
        qtdeOcorrDividaVenc: json["qtde_ocorr_divida_venc"] == null
            ? null
            : json["qtde_ocorr_divida_venc"],
        tipoOcorrDividaVenc: json["tipo_ocorr_divida_venc"] == null
            ? null
            : json["tipo_ocorr_divida_venc"],
        chaveCadusDividaVenc: json["chave_cadus_divida_venc"] == null
            ? null
            : json["chave_cadus_divida_venc"],
        tipoReg1: json["tipo_reg_1"] == null ? null : json["tipo_reg_1"],
        dddTelCreditBureau: json["ddd_tel_credit_bureau"] == null
            ? null
            : json["ddd_tel_credit_bureau"],
        telefoneCreditBureau: json["telefone_credit_bureau"] == null
            ? null
            : json["telefone_credit_bureau"],
        enderecoCreditBureau: json["endereco_credit_bureau"] == null
            ? null
            : json["endereco_credit_bureau"],
        bairroCreditBureau: json["bairro_credit_bureau"] == null
            ? null
            : json["bairro_credit_bureau"],
        cepCreditBureau: json["cep_credit_bureau"] == null
            ? null
            : json["cep_credit_bureau"],
        tipoReg2: json["tipo_reg_2"] == null ? null : json["tipo_reg_2"],
        cidadeCreditBureau: json["cidade_credit_bureau"] == null
            ? null
            : json["cidade_credit_bureau"],
        ufCreditBureau:
            json["uf_credit_bureau"] == null ? null : json["uf_credit_bureau"],
        nomeB370: json["nome_b370"] == null ? null : json["nome_b370"],
        dtAtualizacaoB370: json["dt_atualizacao_b370"] == null
            ? null
            : json["dt_atualizacao_b370"],
        a900Description:
            json["A900_description"] == null ? null : json["A900_description"],
        b900Description:
            json["B900_description"] == null ? null : json["B900_description"],
        t999Description:
            json["T999_description"] == null ? null : json["T999_description"],
        creditoBureauB354: json["creditoBureauB354"] == null
            ? null
            : List<CreditoBureauB354>.from(json["creditoBureauB354"]
                .map((x) => CreditoBureauB354.fromJson(x))),
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cpf": cpf == null ? null : cpf,
        "rg": rg == null ? null : rg,
        "dt_nascimento_b001":
            dtNascimentoB001 == null ? null : dtNascimentoB001,
        "cod_cidade": codCidade == null ? null : codCidade,
        "titular": titular == null ? null : titular,
        "situacao": situacao == null ? null : situacao,
        "dt_atualizacao_b001":
            dtAtualizacaoB001 == null ? null : dtAtualizacaoB001,
        "nova_situacao": novaSituacao == null ? null : novaSituacao,
        "credit_bureaucol": creditBureaucol == null ? null : creditBureaucol,
        "dt_atualizacao_b002":
            dtAtualizacaoB002 == null ? null : dtAtualizacaoB002,
        "dt_nascimento_B002":
            dtNascimentoB002 == null ? null : dtNascimentoB002,
        "nome_mae": nomeMae == null ? null : nomeMae,
        "sexo": sexo == null ? null : sexo,
        "tipo_doc": tipoDoc == null ? null : tipoDoc,
        "num_doc": numDoc == null ? null : numDoc,
        "orgao_emissor": orgaoEmissor == null ? null : orgaoEmissor,
        "data_emissao": dataEmissao == null ? null : dataEmissao,
        "uf_emissor": ufEmissor == null ? null : ufEmissor,
        "estado_civil": estadoCivil == null ? null : estadoCivil,
        "num_dependentes": numDependentes == null ? null : numDependentes,
        "escolaridade": escolaridade == null ? null : escolaridade,
        "municipio_nascimento":
            municipioNascimento == null ? null : municipioNascimento,
        "uf_nascimento": ufNascimento == null ? null : ufNascimento,
        "cpf_conjuge": cpfConjuge == null ? null : cpfConjuge,
        "ddd_residencial": dddResidencial == null ? null : dddResidencial,
        "fone_residencial": foneResidencial == null ? null : foneResidencial,
        "ddd_comercial": dddComercial == null ? null : dddComercial,
        "fone_comercial": foneComercial == null ? null : foneComercial,
        "ramal": ramal == null ? null : ramal,
        "celular": celular == null ? null : celular,
        "cod_cliente": codCliente == null ? null : codCliente,
        "logradouro": logradouro == null ? null : logradouro,
        "numero": numero == null ? null : numero,
        "complemento": complemento == null ? null : complemento,
        "bairro": bairro == null ? null : bairro,
        "cidade": cidade == null ? null : cidade,
        "uf_b004": ufB004 == null ? null : ufB004,
        "cep": cep == null ? null : cep,
        "desde_residencia": desdeResidencia == null ? null : desdeResidencia,
        "ocupacao": ocupacao == null ? null : ocupacao,
        "renda": renda == null ? null : renda,
        "serie_ct": serieCt == null ? null : serieCt,
        "numero_ct": numeroCt == null ? null : numeroCt,
        "percent_participacao":
            percentParticipacao == null ? null : percentParticipacao,
        "renda_media": rendaMedia == null ? null : rendaMedia,
        "limite_1": limite1 == null ? null : limite1,
        "limite_98": limite98 == null ? null : limite98,
        "qtde_obs": qtdeObs == null ? null : qtdeObs,
        "tipo_tecnolog": tipoTecnolog == null ? null : tipoTecnolog,
        "canal_venda": canalVenda == null ? null : canalVenda,
        "valor_aluguel": valorAluguel == null ? null : valorAluguel,
        "empresa_b006": empresaB006 == null ? null : empresaB006,
        "desde_empresa": desdeEmpresa == null ? null : desdeEmpresa,
        "tipo_moeda_b006": tipoMoedaB006 == null ? null : tipoMoedaB006,
        "tipo_moeda_b354": tipoMoedaB354 == null ? null : tipoMoedaB354,
        "tipo_moeda_b357": tipoMoedaB357 == null ? null : tipoMoedaB357,
        "profissao": profissao == null ? null : profissao,
        "cargo": cargo == null ? null : cargo,
        "empresa_b352": empresaB352 == null ? null : empresaB352,
        "cnpj": cnpj == null ? null : cnpj,
        "percent_participacao_b352":
            percentParticipacaoB352 == null ? null : percentParticipacaoB352,
        "estado": estado == null ? null : estado,
        "situacao_b352": situacaoB352 == null ? null : situacaoB352,
        "dt_ini_partic": dtIniPartic == null ? null : dtIniPartic,
        "dt_ult_atualizacao_b352":
            dtUltAtualizacaoB352 == null ? null : dtUltAtualizacaoB352,
        "qtde_total": qtdeTotal == null ? null : qtdeTotal,
        "data_atual": dataAtual == null ? null : dataAtual,
        "data_atual_b353": dataAtualB353 == null ? null : dataAtualB353,
        "qtde_atual_cred": qtdeAtualCred == null ? null : qtdeAtualCred,
        "qtde_mes1_cred": qtdeMes1Cred == null ? null : qtdeMes1Cred,
        "qtde_mes2_cred": qtdeMes2Cred == null ? null : qtdeMes2Cred,
        "qtde_mes3_cred": qtdeMes3Cred == null ? null : qtdeMes3Cred,
        "qtde_total_b353": qtdeTotalB353 == null ? null : qtdeTotalB353,
        "qtde_total_cred": qtdeTotalCred == null ? null : qtdeTotalCred,
        "qtde_atual_chq": qtdeAtualChq == null ? null : qtdeAtualChq,
        "qtde_mes1_chq": qtdeMes1Chq == null ? null : qtdeMes1Chq,
        "qtde_mes2_chq": qtdeMes2Chq == null ? null : qtdeMes2Chq,
        "qtde_mes3_chq": qtdeMes3Chq == null ? null : qtdeMes3Chq,
        "posicao": posicao == null ? null : posicao,
        "data_ficad": dataFicad == null ? null : dataFicad,
        "dt_ocorr_b354": dtOcorrB354 == null ? null : dtOcorrB354,
        "origem_b354": origemB354 == null ? null : origemB354,
        "origem_b357": origemB357 == null ? null : origemB357,
        "modalidade": modalidade == null ? null : modalidade,
        "valor": valor == null ? null : valor,
        "agencia": agencia == null ? null : agencia,
        "banco": banco == null ? null : banco,
        "conta_corrente": contaCorrente == null ? null : contaCorrente,
        "ch_inicial": chInicial == null ? null : chInicial,
        "ch_final": chFinal == null ? null : chFinal,
        "motivo_susta": motivoSusta == null ? null : motivoSusta,
        "informe": informe == null ? null : informe,
        "fonte": fonte == null ? null : fonte,
        "mensagem": mensagem == null ? null : mensagem,
        "documento_b356": documentoB356 == null ? null : documentoB356,
        "tp_docto": tpDocto == null ? null : tpDocto,
        "qtde_total_pend_pag":
            qtdeTotalPendPag == null ? null : qtdeTotalPendPag,
        "descricao_pend_pag":
            descricaoPendPag == null ? null : descricaoPendPag,
        "data_menor": dataMenor == null ? null : dataMenor,
        "data_maior": dataMaior == null ? null : dataMaior,
        "vlr_ultima": vlrUltima == null ? null : vlrUltima,
        "filial": filial == null ? null : filial,
        "tipo_pefin_b357": tipoPefinB357 == null ? null : tipoPefinB357,
        "tipo_pefin_b358": tipoPefinB358 == null ? null : tipoPefinB358,
        "tipo_ocor": tipoOcor == null ? null : tipoOcor,
        "chave_cadus": chaveCadus == null ? null : chaveCadus,
        "ult_ocor_b358": ultOcorB358 == null ? null : ultOcorB358,
        "dt_ocorr_b358": dtOcorrB358 == null ? null : dtOcorrB358,
        "sigla_mod": siglaMod == null ? null : siglaMod,
        "principal": principal == null ? null : principal,
        "tipo_moeda_b358": tipoMoedaB358 == null ? null : tipoMoedaB358,
        "contrato": contrato == null ? null : contrato,
        "empresa_origem": empresaOrigem == null ? null : empresaOrigem,
        "empresa_filial": empresaFilial == null ? null : empresaFilial,
        "qtde_ocorr": qtdeOcorr == null ? null : qtdeOcorr,
        "cod_banco": codBanco == null ? null : codBanco,
        "subjud_x": subjudX == null ? null : subjudX,
        "uf_b358": ufB358 == null ? null : ufB358,
        "qtde_total_chq_fund":
            qtdeTotalChqFund == null ? null : qtdeTotalChqFund,
        "descricao_chq_fund":
            descricaoChqFund == null ? null : descricaoChqFund,
        "data_menor_chq_fund":
            dataMenorChqFund == null ? null : dataMenorChqFund,
        "data_maior_chq_fund":
            dataMaiorChqFund == null ? null : dataMaiorChqFund,
        "tipo_moeda_b359": tipoMoedaB359 == null ? null : tipoMoedaB359,
        "valor_ultima_chq_fund":
            valorUltimaChqFund == null ? null : valorUltimaChqFund,
        "origem_b359": origemB359 == null ? null : origemB359,
        "agencia_b359": agenciaB359 == null ? null : agenciaB359,
        "dt_ocorr_b360": dtOcorrB360 == null ? null : dtOcorrB360,
        "num_cheque_b360": numChequeB360 == null ? null : numChequeB360,
        "alinea": alinea == null ? null : alinea,
        "qtde_chq_devolv": qtdeChqDevolv == null ? null : qtdeChqDevolv,
        "tipo_moeda_chq_devolv":
            tipoMoedaChqDevolv == null ? null : tipoMoedaChqDevolv,
        "valor_chq_devolv": valorChqDevolv == null ? null : valorChqDevolv,
        "banco_chq_devolv": bancoChqDevolv == null ? null : bancoChqDevolv,
        "tipo_ocor_chq_devolv":
            tipoOcorChqDevolv == null ? null : tipoOcorChqDevolv,
        "chave_cadus_b360": chaveCadusB360 == null ? null : chaveCadusB360,
        "agencia_banco_b360":
            agenciaBancoB360 == null ? null : agenciaBancoB360,
        "cidade_b360": cidadeB360 == null ? null : cidadeB360,
        "uf_b360": ufB360 == null ? null : ufB360,
        "qtde_ocorr_b360": qtdeOcorrB360 == null ? null : qtdeOcorrB360,
        "tipo_conta_b360": tipoContaB360 == null ? null : tipoContaB360,
        "conta_b360": contaB360 == null ? null : contaB360,
        "qtde_total_protesto":
            qtdeTotalProtesto == null ? null : qtdeTotalProtesto,
        "descricao_protesto":
            descricaoProtesto == null ? null : descricaoProtesto,
        "data_menor_protesto":
            dataMenorProtesto == null ? null : dataMenorProtesto,
        "data_maior_protesto":
            dataMaiorProtesto == null ? null : dataMaiorProtesto,
        "tipo_moeda_b361": tipoMoedaB361 == null ? null : tipoMoedaB361,
        "tipo_moeda_b362": tipoMoedaB362 == null ? null : tipoMoedaB362,
        "valor_protesto_b361":
            valorProtestoB361 == null ? null : valorProtestoB361,
        "valor_protesto_b362":
            valorProtestoB362 == null ? null : valorProtestoB362,
        "cidade_protesto_b361":
            cidadeProtestoB361 == null ? null : cidadeProtestoB361,
        "cidade_protesto_b362":
            cidadeProtestoB362 == null ? null : cidadeProtestoB362,
        "dt_ocorrencia_protesto_b362":
            dtOcorrenciaProtestoB362 == null ? null : dtOcorrenciaProtestoB362,
        "cartorio_protesto": cartorioProtesto == null ? null : cartorioProtesto,
        "uf_protesto_b361": ufProtestoB361 == null ? null : ufProtestoB361,
        "uf_protesto_b362": ufProtestoB362 == null ? null : ufProtestoB362,
        "qtde_ocorr_protesto":
            qtdeOcorrProtesto == null ? null : qtdeOcorrProtesto,
        "subjudice_protesto":
            subjudiceProtesto == null ? null : subjudiceProtesto,
        "data_carta_anuencia":
            dataCartaAnuencia == null ? null : dataCartaAnuencia,
        "tipo_ocorr_protesto":
            tipoOcorrProtesto == null ? null : tipoOcorrProtesto,
        "chave_cadus_protesto":
            chaveCadusProtesto == null ? null : chaveCadusProtesto,
        "qtde_total_acao_jud":
            qtdeTotalAcaoJud == null ? null : qtdeTotalAcaoJud,
        "descricao_acao_jud":
            descricaoAcaoJud == null ? null : descricaoAcaoJud,
        "data_menor_acao_jud":
            dataMenorAcaoJud == null ? null : dataMenorAcaoJud,
        "data_maior_acao_jud":
            dataMaiorAcaoJud == null ? null : dataMaiorAcaoJud,
        "tipo_moeda_acao_jud_b363":
            tipoMoedaAcaoJudB363 == null ? null : tipoMoedaAcaoJudB363,
        "valor_acao_jud_b363":
            valorAcaoJudB363 == null ? null : valorAcaoJudB363,
        "natureza_acao_jud_b363":
            naturezaAcaoJudB363 == null ? null : naturezaAcaoJudB363,
        "uf_acao_jud_b363": ufAcaoJudB363 == null ? null : ufAcaoJudB363,
        "dt_ocorr_acao_jud": dtOcorrAcaoJud == null ? null : dtOcorrAcaoJud,
        "natureza_acao_jud_b364":
            naturezaAcaoJudB364 == null ? null : naturezaAcaoJudB364,
        "principal_acao_jud":
            principalAcaoJud == null ? null : principalAcaoJud,
        "tipo_moeda_acao_jud_b364":
            tipoMoedaAcaoJudB364 == null ? null : tipoMoedaAcaoJudB364,
        "valor_acao_jud_b364":
            valorAcaoJudB364 == null ? null : valorAcaoJudB364,
        "distribuidor_acao_jud":
            distribuidorAcaoJud == null ? null : distribuidorAcaoJud,
        "vara": vara == null ? null : vara,
        "cidade_acao_jud": cidadeAcaoJud == null ? null : cidadeAcaoJud,
        "uf_acao_jud_b364": ufAcaoJudB364 == null ? null : ufAcaoJudB364,
        "qtde_ocorr_b364": qtdeOcorrB364 == null ? null : qtdeOcorrB364,
        "subjudice_b364": subjudiceB364 == null ? null : subjudiceB364,
        "tipo_ocor_acao_jud_b364":
            tipoOcorAcaoJudB364 == null ? null : tipoOcorAcaoJudB364,
        "chave_cadus_acao_jud_b364":
            chaveCadusAcaoJudB364 == null ? null : chaveCadusAcaoJudB364,
        "total_ocorr_falencias":
            totalOcorrFalencias == null ? null : totalOcorrFalencias,
        "descricao_falencias":
            descricaoFalencias == null ? null : descricaoFalencias,
        "data_menor_falencias":
            dataMenorFalencias == null ? null : dataMenorFalencias,
        "data_maior_falencias":
            dataMaiorFalencias == null ? null : dataMaiorFalencias,
        "empresa_falencia": empresaFalencia == null ? null : empresaFalencia,
        "data_ocorr_falencia_b366":
            dataOcorrFalenciaB366 == null ? null : dataOcorrFalenciaB366,
        "tipo_ocorr_falencia_b366":
            tipoOcorrFalenciaB366 == null ? null : tipoOcorrFalenciaB366,
        "cnpj_pie": cnpjPie == null ? null : cnpjPie,
        "empresa_falencia_b366":
            empresaFalenciaB366 == null ? null : empresaFalenciaB366,
        "total_ocorr_falencia_b366":
            totalOcorrFalenciaB366 == null ? null : totalOcorrFalenciaB366,
        "qualificacao_b366": qualificacaoB366 == null ? null : qualificacaoB366,
        "vara_civil_b366": varaCivilB366 == null ? null : varaCivilB366,
        "tipo_ocor_falencia_b366":
            tipoOcorFalenciaB366 == null ? null : tipoOcorFalenciaB366,
        "chave_cadus_falencia_b366":
            chaveCadusFalenciaB366 == null ? null : chaveCadusFalenciaB366,
        "qtde_total_convem": qtdeTotalConvem == null ? null : qtdeTotalConvem,
        "descricao_convem": descricaoConvem == null ? null : descricaoConvem,
        "data_menor_convem": dataMenorConvem == null ? null : dataMenorConvem,
        "data_maior_convem": dataMaiorConvem == null ? null : dataMaiorConvem,
        "tipo_moeda_convem": tipoMoedaConvem == null ? null : tipoMoedaConvem,
        "valor_ultima_convem":
            valorUltimaConvem == null ? null : valorUltimaConvem,
        "origem_convem": origemConvem == null ? null : origemConvem,
        "local_convem": localConvem == null ? null : localConvem,
        "data_ocorr_divida_venc":
            dataOcorrDividaVenc == null ? null : dataOcorrDividaVenc,
        "modalidade_divida_venc":
            modalidadeDividaVenc == null ? null : modalidadeDividaVenc,
        "tipo_moeda_divida_venc":
            tipoMoedaDividaVenc == null ? null : tipoMoedaDividaVenc,
        "valor_divida_venc": valorDividaVenc == null ? null : valorDividaVenc,
        "titulo_divida_venc":
            tituloDividaVenc == null ? null : tituloDividaVenc,
        "origem_divida_venc":
            origemDividaVenc == null ? null : origemDividaVenc,
        "local_divida_venc": localDividaVenc == null ? null : localDividaVenc,
        "qtde_ocorr_divida_venc":
            qtdeOcorrDividaVenc == null ? null : qtdeOcorrDividaVenc,
        "tipo_ocorr_divida_venc":
            tipoOcorrDividaVenc == null ? null : tipoOcorrDividaVenc,
        "chave_cadus_divida_venc":
            chaveCadusDividaVenc == null ? null : chaveCadusDividaVenc,
        "tipo_reg_1": tipoReg1 == null ? null : tipoReg1,
        "ddd_tel_credit_bureau":
            dddTelCreditBureau == null ? null : dddTelCreditBureau,
        "telefone_credit_bureau":
            telefoneCreditBureau == null ? null : telefoneCreditBureau,
        "endereco_credit_bureau":
            enderecoCreditBureau == null ? null : enderecoCreditBureau,
        "bairro_credit_bureau":
            bairroCreditBureau == null ? null : bairroCreditBureau,
        "cep_credit_bureau": cepCreditBureau == null ? null : cepCreditBureau,
        "tipo_reg_2": tipoReg2 == null ? null : tipoReg2,
        "cidade_credit_bureau":
            cidadeCreditBureau == null ? null : cidadeCreditBureau,
        "uf_credit_bureau": ufCreditBureau == null ? null : ufCreditBureau,
        "nome_b370": nomeB370 == null ? null : nomeB370,
        "dt_atualizacao_b370":
            dtAtualizacaoB370 == null ? null : dtAtualizacaoB370,
        "A900_description": a900Description == null ? null : a900Description,
        "B900_description": b900Description == null ? null : b900Description,
        "T999_description": t999Description == null ? null : t999Description,
        "creditoBureauB354": creditoBureauB354 == null
            ? null
            : List<dynamic>.from(creditoBureauB354.map((x) => x.toJson())),
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}

class CreditoBureauB354 {
  CreditoBureauB354({
    this.cpf,
    this.tipoReg,
    this.dtOcorrencia,
    this.origem,
    this.modalidade,
    this.tipoMoeda,
    this.valor,
    this.resultCode,
    this.resultDescription,
  });

  String cpf;
  String tipoReg;
  String dtOcorrencia;
  String origem;
  String modalidade;
  String tipoMoeda;
  String valor;
  int resultCode;
  String resultDescription;

  factory CreditoBureauB354.fromJson(Map<String, dynamic> json) =>
      CreditoBureauB354(
        cpf: json["cpf"] == null ? null : json["cpf"],
        tipoReg: json["tipo_reg"] == null ? null : json["tipo_reg"],
        dtOcorrencia:
            json["dt_ocorrencia"] == null ? null : json["dt_ocorrencia"],
        origem: json["origem"] == null ? null : json["origem"],
        modalidade: json["modalidade"] == null ? null : json["modalidade"],
        tipoMoeda: json["tipo_moeda"] == null ? null : json["tipo_moeda"],
        valor: json["valor"] == null ? null : json["valor"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cpf": cpf == null ? null : cpf,
        "tipo_reg": tipoReg == null ? null : tipoReg,
        "dt_ocorrencia": dtOcorrencia == null ? null : dtOcorrencia,
        "origem": origem == null ? null : origem,
        "modalidade": modalidade == null ? null : modalidade,
        "tipo_moeda": tipoMoeda == null ? null : tipoMoeda,
        "valor": valor == null ? null : valor,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
