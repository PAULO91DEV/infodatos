import 'package:infodatos/domain/entities/oauth_entity.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {


OauthEntity oauthEntity;

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
