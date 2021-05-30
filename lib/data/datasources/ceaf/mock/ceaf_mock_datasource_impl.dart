import 'package:flutter/material.dart';
import 'package:infodatos/data/datasources/ceaf/ceaf_datasource.dart';
import 'package:infodatos/domain/entities/ceaf_entity.dart';

class CeafMockDataSourceImpl implements CeafDataSource {
  @override
  Future<List<CeafEntity>> getCeaf({
    @required String userLogin,
    @required String token,
    String name,
    String cpf,
  }) {
    return Future.delayed(Duration(seconds: 2)).then((_) {
      return ceafEntityFromJson(
          '[{"fonte":"CEAF","nome":"ADEMIR AGOSTINHO DE CAMPOS","cpf":"55867472949","uf_lotacao":"MG","cargo_efetivo":"Policial Rodoviário Federal","data_publicacao_portaria_punicao":"27/09/2013","pagina":"3","secao_do_dou":"2","tipo_punicao":"DEMISSÃO","num_processo_administrativo":"00190.011913/2011-22","fundamento_legal":"8112-116-IX - Manter conduta compatível com a moralidade administrativa, 8112-116-III - Observar as normas legais e regulamentares, 8112-117-IX - Valer-se do cargo para lograr proveito pessoal ou de outrem, em detrimento da dignidade da função pública, 81","id":null,"result_code":0,"result_description":""}]');
    });
  }
}
