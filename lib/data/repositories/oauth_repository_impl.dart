import 'package:infodatos/data/datasources/oauth/oauth_datasource.dart';
import 'package:infodatos/domain/entities/oauth_entity.dart';
import 'package:infodatos/domain/repositories/oauth_repository.dart';

class OAuthRepositoryImpl implements OAuthRepository {
  final OAuthDataSource _dataSource;
  OAuthRepositoryImpl(this._dataSource);

  @override
  Future<OauthEntity> authentication(String username, String password) {
    return this._dataSource.authentication(username, password);
  }
}
