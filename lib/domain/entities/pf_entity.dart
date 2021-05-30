// To parse this JSON data, do
//
//     final pfEntity = pfEntityFromJson(jsonString);

import 'dart:convert';

List<PfEntity> pfEntityFromJson(String str) =>
    List<PfEntity>.from(json.decode(str).map((x) => PfEntity.fromJson(x)));

String pfEntityToJson(List<PfEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PfEntity {
  PfEntity({
    this.cpf,
    this.cpfParcial,
    this.nomeCompleto,
    this.dtNascimento,
    this.sexo,
    this.idade,
    this.signo,
    this.obito,
    this.anoObito,
    this.tipoLogradouro,
    this.endereco,
    this.numero,
    this.bairro,
    this.municipio,
    this.uf,
    this.cep,
    this.ddd,
    this.telefone,
    this.flagProcon,
    this.flagAssinante,
    this.flagCelular,
    this.scoreTelefone,
    this.email,
    this.situacaoRf,
    this.id,
    this.resultCode,
    this.resultDescription,
  });

  String cpf;
  String cpfParcial;
  String nomeCompleto;
  String dtNascimento;
  String sexo;
  String idade;
  String signo;
  String obito;
  String anoObito;
  String tipoLogradouro;
  String endereco;
  String numero;
  String bairro;
  String municipio;
  String uf;
  String cep;
  String ddd;
  String telefone;
  String flagProcon;
  String flagAssinante;
  String flagCelular;
  String scoreTelefone;
  String email;
  String situacaoRf;
  String id;
  int resultCode;
  String resultDescription;

  factory PfEntity.fromJson(Map<String, dynamic> json) => PfEntity(
        cpf: json["cpf"] == null ? null : json["cpf"],
        cpfParcial: json["cpf_parcial"] == null ? null : json["cpf_parcial"],
        nomeCompleto:
            json["nome_completo"] == null ? null : json["nome_completo"],
        dtNascimento:
            json["dt_nascimento"] == null ? null : json["dt_nascimento"],
        sexo: json["sexo"] == null ? null : json["sexo"],
        idade: json["idade"] == null ? null : json["idade"],
        signo: json["signo"] == null ? null : json["signo"],
        obito: json["obito"] == null ? null : json["obito"],
        anoObito: json["ano_obito"] == null ? null : json["ano_obito"],
        tipoLogradouro:
            json["tipo_logradouro"] == null ? null : json["tipo_logradouro"],
        endereco: json["endereco"] == null ? null : json["endereco"],
        numero: json["numero"] == null ? null : json["numero"],
        bairro: json["bairro"] == null ? null : json["bairro"],
        municipio: json["municipio"] == null ? null : json["municipio"],
        uf: json["uf"] == null ? null : json["uf"],
        cep: json["cep"] == null ? null : json["cep"],
        ddd: json["ddd"] == null ? null : json["ddd"],
        telefone: json["telefone"] == null ? null : json["telefone"],
        flagProcon: json["flag_procon"] == null ? null : json["flag_procon"],
        flagAssinante:
            json["flag_assinante"] == null ? null : json["flag_assinante"],
        flagCelular: json["flag_celular"] == null ? null : json["flag_celular"],
        scoreTelefone:
            json["score_telefone"] == null ? null : json["score_telefone"],
        email: json["email"] == null ? null : json["email"],
        situacaoRf: json["situacao_rf"] == null ? null : json["situacao_rf"],
        id: json["id"] == null ? null : json["id"],
        resultCode: json["result_code"] == null ? null : json["result_code"],
        resultDescription: json["result_description"] == null
            ? null
            : json["result_description"],
      );

  Map<String, dynamic> toJson() => {
        "cpf": cpf == null ? null : cpf,
        "cpf_parcial": cpfParcial == null ? null : cpfParcial,
        "nome_completo": nomeCompleto == null ? null : nomeCompleto,
        "dt_nascimento": dtNascimento == null ? null : dtNascimento,
        "sexo": sexo == null ? null : sexo,
        "idade": idade == null ? null : idade,
        "signo": signo == null ? null : signo,
        "obito": obito == null ? null : obito,
        "ano_obito": anoObito == null ? null : anoObito,
        "tipo_logradouro": tipoLogradouro == null ? null : tipoLogradouro,
        "endereco": endereco == null ? null : endereco,
        "numero": numero == null ? null : numero,
        "bairro": bairro == null ? null : bairro,
        "municipio": municipio == null ? null : municipio,
        "uf": uf == null ? null : uf,
        "cep": cep == null ? null : cep,
        "ddd": ddd == null ? null : ddd,
        "telefone": telefone == null ? null : telefone,
        "flag_procon": flagProcon == null ? null : flagProcon,
        "flag_assinante": flagAssinante == null ? null : flagAssinante,
        "flag_celular": flagCelular == null ? null : flagCelular,
        "score_telefone": scoreTelefone == null ? null : scoreTelefone,
        "email": email == null ? null : email,
        "situacao_rf": situacaoRf == null ? null : situacaoRf,
        "id": id == null ? null : id,
        "result_code": resultCode == null ? null : resultCode,
        "result_description":
            resultDescription == null ? null : resultDescription,
      };
}
