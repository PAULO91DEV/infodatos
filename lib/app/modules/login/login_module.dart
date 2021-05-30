import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/modules/login/login_controller.dart';
import 'package:infodatos/app/modules/login/login_page.dart';
import 'package:infodatos/data/datasources/oauth/mock/oauth_mock_datasource.dart';
import 'package:infodatos/data/repositories/oauth_repository_impl.dart';
import 'package:infodatos/domain/usecases/oauth/authenticate_usecase.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        // Bind((i) =>
        //     OAuthRepositoryImpl(OAuthRemoteDataSourceImpl(i.get<Dio>()))),
        Bind((i) => OAuthRepositoryImpl(OAuthMockDataSource())),
        Bind((i) => AuthenticateUseCase(i.get<OAuthRepositoryImpl>())),
        Bind(
          (i) => LoginController(
              authenticateUseCase: i.get<AuthenticateUseCase>()),
        ),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
