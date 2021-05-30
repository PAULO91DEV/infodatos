// import 'dart:ffi';

import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/app_controller.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/repositories/oauth_repository.dart';

class AuthenticateUseCase implements UseCase<void , AuthenticateUseCaseParams>{
 final OAuthRepository _repository;

  AuthenticateUseCase(this._repository);
 
  @override
  Future<void> call(AuthenticateUseCaseParams params) {
    return this._repository.authentication(params.username, params.password).then((result) {
      var appController = Modular.get<AppController>();
      appController.oauthEntity = result;
    });
  }
  
} 

class AuthenticateUseCaseParams extends Equatable {
  final String username;
  final String password;

  AuthenticateUseCaseParams(this.username, this.password);

  @override
  
  List<Object> get props => [
    this.username , 
    this.password,
  ];
}