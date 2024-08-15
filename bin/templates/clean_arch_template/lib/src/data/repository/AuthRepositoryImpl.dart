import 'package:clean_arch_template/src/data/dataSource/remote/services/ExampleService.dart';
import 'package:clean_arch_template/src/domain/models/example.dart';
import 'package:clean_arch_template/src/domain/repository/AuthRepository.dart';
import 'package:clean_arch_template/src/domain/utils/Resources.dart';

class AuthRepositoryImpl implements AuthRepository {
  ExampleService exampleService;
  AuthRepositoryImpl(this.exampleService);

  @override
  Future<Resource<AuthResponse>> getExampleData(String body) {
    return exampleService.getExample(body);
  }
}
