
import 'package:flutter/material.dart';
import 'package:infodatos/domain/entities/ceaf_entity.dart';

class CeafDataSource {
  // ignore: missing_return
  Future<List<CeafEntity>> getCeaf({
    @required String userLogin,
    @required String token,
    String name,
    String cpf,
  }) {}
}