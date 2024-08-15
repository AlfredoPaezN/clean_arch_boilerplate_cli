import 'package:clean_arch_template/src/data/dataSource/remote/services/ExampleService.dart';
import 'package:clean_arch_template/src/data/repository/AuthRepositoryImpl.dart';
import 'package:clean_arch_template/src/domain/repository/AuthRepository.dart';
import 'package:clean_arch_template/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:clean_arch_template/src/domain/useCases/auth/ExampleUseCase.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @injectable
  ExampleService get exampleService => ExampleService();

  @injectable
  AuthRepository get authRepository => AuthRepositoryImpl(exampleService);

  @injectable
  AuthUseCases get authUseCases =>
      AuthUseCases(exampleUseCase: ExampleUseCase(authRepository));
}
