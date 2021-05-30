import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/enums.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/entities/person_name_entity.dart';
import 'package:infodatos/domain/repositories/person_repository.dart';

class GetPersonByNameUseCase
    implements UseCase<List<PersonNameEntity>, GetPersonByNameUseCaseParams> {
  final PersonRepository _repository;
  GetPersonByNameUseCase(this._repository);

  @override
  Future<List<PersonNameEntity>> call(GetPersonByNameUseCaseParams params) {
    return _repository.getByName(
      token: params.token,
      name: params.name,
      products: this._getProducts(params.searchItems),
    );
  }

  List<String> _getProducts(List<ItemSearchDto> searchItems) {
    List<String> products = [];
    for (var idx = 0; idx < searchItems.length; idx++) {
      var item = searchItems[idx];
      switch (item.searchType) {
        case SearchType.RegistrationData:
          products.add("Registration");
          break;
        case SearchType.PEP:
          products.add("PEP");
          break;
        default:
          break;
      }
    }
    return products;
  }
}

class GetPersonByNameUseCaseParams extends Equatable {
  final String token;
  final String name;
  final List<ItemSearchDto> searchItems;

  GetPersonByNameUseCaseParams({
    @required this.token,
    @required this.name,
    @required this.searchItems,
    List products,
  });

  @override
  List<Object> get props => [
        this.token,
        this.name,
        this.searchItems,
      ];
}
