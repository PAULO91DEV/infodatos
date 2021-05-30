import 'package:dio/dio.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/data/datasources/oauth/oauth_datasource.dart';
import 'package:infodatos/domain/entities/oauth_entity.dart';

class OAuthRemoteDataSourceImpl implements OAuthDataSource {
  final Dio _dio;
  OAuthRemoteDataSourceImpl(this._dio);

  Dio createDio() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
    ));
    return dio;
  }

  @override
  Future<OauthEntity> authentication(String username, String password) async {
    return this
        ._dio
        .post(
          "$kUrlOAuth2/connect/token",
          data: {
            "grant_type": kGrantType,
            "client_id": username,
            "client_secret": password
          },
          options: Options(contentType: Headers.formUrlEncodedContentType),
        )
        .then((result) {
      OauthEntity oauthEntity;
      if (result.statusCode == 200) {
        oauthEntity = OauthEntity.fromJson(result.data);
      }
      return oauthEntity;
    });
  }
}
