import 'package:clean_arch_template/src/data/repository/AuthRepositoryImpl.dart';
import 'package:clean_arch_template/src/domain/repository/AuthRepository.dart';

class ExampleUseCase {
  AuthRepository authRepository;

  ExampleUseCase(this.authRepository);
  run(String body) {
    return authRepository.getExampleData(body);
  }
}
