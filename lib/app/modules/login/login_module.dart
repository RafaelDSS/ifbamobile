import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifbamobile/app/modules/login/stores/login_store.dart';
import 'package:ifbamobile/app/shared/repositories/localstorage_repository.dart';
import 'package:ifbamobile/app/modules/login/repositories/login_repository.dart';
import 'package:ifbamobile/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => LocalStorageRepository()),
    Bind((i) => LoginRepository(Dio())),
    Bind((i) => LoginStore(i.get(), i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const Login()),
  ];
}
