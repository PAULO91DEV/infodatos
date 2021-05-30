// To parse this JSON data, do
//
//     final lriEntity = lriEntityFromJson(jsonString);

import 'dart:convert';

List<LriEntity> lriEntityFromJson(String str) =>
    List<LriEntity>.from(json.decode(str).map((x) => LriEntity.fromJson(x)));

String lriEntityToJson(List<LriEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LriEntity {
  LriEntity({
    this.fonte,
    this.nome,
    this.documentos,
    this.pseudonimos,
    this.membro,
    this.dataNascimento,
    this.localNascimento,
    this.sexo,
    this.faixaIdade,
    this.altura,
    this.corOlhos,
    this.corCabelo,
    this.comprimentoCabelo,
    this.tipoCorpo,
    this.aparenciaEtnica,
    this.identificacao,
    this.linguasFaladas,
    this.status,
    this.crime,
    this.crimeCircunstancias,
    this.dataCrime,
    this.dataRemocaoLista,
    this.local,
    this.numeroCaso,
    this.telefone,
    this.investigador,
    this.infoAdicional,
    this.organizacaoTerrorista,
    this.resumo,
    this.contato,
    this.resultCode,
    this.resultDescription,
  });

  String fonte;
  String nome;
  String documentos;
  String pseudonimos;
  String membro;
  String dataNascimento;
  String localNascimento;
  String sexo;
  String faixaIdade;
  String altura;
  String corOlhos;
  String corCabelo;
  String comprimentoCabelo;
  String tipoCorpo;
  String aparenciaEtnica;
  String identificacao;
  String linguasFaladas;
  String status;
  String crime;
  String crimeCircunstancias;
  String dataCrime;
  String dataRemocaoLista;
  String local;
  String numeroCaso;
  String telefone;
  String investigador;
  String infoAdicional;
  String organizacaoTerrorista;
  String resumo;
  String contato;
  int resultCode;
  String resultDescription;

  factory LriEntity.fromJson(Map<String, dynamic> json) => LriEntity(
        fonte: json["fonte"] == null ? null : json["fonte"],
        nome: json["nome"] == null ? null : json["nome"],
        documentos: json["documentos"] == null ? null : json["documentos"],
        pseudonimos: json["pseudonimos"] == null ? null : json["pseudonimos"],
        membro: json["membro"] == null ? null : json["membro"],
        dataNascimento:
            json["data_nascimento"] == null ? null : json["data_nascimento"],
        localNascimento:
            json["local_nascimento"] == null ? null : json["local_nascimento"],
        sexo: json["sexo"] == null ? null : json["sexo"],
        faixaIdade: json["faixa_idade"] == null ? null : json["faixa_idade"],
        altura: json["altura"] == null ? null : json["altura"],
        corOlhos: json["cor_olhos"] == null ? null : json["cor_olhos"],
        corCabelo: json["cor_cabelo"] == null ? null : json["cor_cabelo"],
        comprimentoCabelo: json["comprimento_cabelo"] == null
            ? null
            : json["comprimento_cabelo"],
        tipoCorpo: json["tipo_corpo"] == null ? null : json["tipo_corpo"],
        aparenciaEtnica:
            json["aparencia_etnica"] == null ? null : json["aparencia_etnica"],
        identificacao:
            json["identificacao"] == null ? null : json["identificacao"],
        linguasFaladas:
            json["linguas_faladas"] == null ? null : json["linguas_faladas"],
        status: json["status"] == null ? null : json["status"],
        crime: json["crime"] == null ? null : json["crime"],
        crimeCircunstancias: json["crime_circunstancias"] == null
            ? null
            : json["crime_circunstancias"],
        dataCrime: json["data_crime"] == null ? null : json["data_crime"],
        dataRemocaoLista: json["data_remocao_lista"] == null
            ? null
            : json["data_remocao_lista"],
        local: json["local"] == null ? null : json["local"],
        numeroCaso: json["numero_caso"] == null ? null : json["numero_caso"],
        telefone: json["telefone"] == null ? null : json["telefone"],
        investigador:
            json["investigador"] == null ? null : json["investigador"],
        infoAdicional:
            json["info_adicional"] == null ? null : json["info_adicional"],
        organizacaoTerrorista: json["organizacao_terrorista"] == null
            ? null
            : json["organizacao_terrorista"],
        resumo: json["resumo"] == null ? null : json["resumo"],
        contato: json["contato"] == null ? null : json["contato"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "fonte": fonte == null ? null : fonte,
        "nome": nome == null ? null : nome,
        "documentos": documentos == null ? null : documentos,
        "pseudonimos": pseudonimos == null ? null : pseudonimos,
        "membro": membro == null ? null : membro,
        "data_nascimento": dataNascimento == null ? null : dataNascimento,
        "local_nascimento": localNascimento == null ? null : localNascimento,
        "sexo": sexo == null ? null : sexo,
        "faixa_idade": faixaIdade == null ? null : faixaIdade,
        "altura": altura == null ? null : altura,
        "cor_olhos": corOlhos == null ? null : corOlhos,
        "cor_cabelo": corCabelo == null ? null : corCabelo,
        "comprimento_cabelo":
            comprimentoCabelo == null ? null : comprimentoCabelo,
        "tipo_corpo": tipoCorpo == null ? null : tipoCorpo,
        "aparencia_etnica": aparenciaEtnica == null ? null : aparenciaEtnica,
        "identificacao": identificacao == null ? null : identificacao,
        "linguas_faladas": linguasFaladas == null ? null : linguasFaladas,
        "status": status == null ? null : status,
        "crime": crime == null ? null : crime,
        "crime_circunstancias":
            crimeCircunstancias == null ? null : crimeCircunstancias,
        "data_crime": dataCrime == null ? null : dataCrime,
        "data_remocao_lista":
            dataRemocaoLista == null ? null : dataRemocaoLista,
        "local": local == null ? null : local,
        "numero_caso": numeroCaso == null ? null : numeroCaso,
        "telefone": telefone == null ? null : telefone,
        "investigador": investigador == null ? null : investigador,
        "info_adicional": infoAdicional == null ? null : infoAdicional,
        "organizacao_terrorista":
            organizacaoTerrorista == null ? null : organizacaoTerrorista,
        "resumo": resumo == null ? null : resumo,
        "contato": contato == null ? null : contato,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
