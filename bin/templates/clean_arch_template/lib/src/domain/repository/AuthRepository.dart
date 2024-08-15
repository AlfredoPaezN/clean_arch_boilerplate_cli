import 'package:clean_arch_template/src/domain/models/example.dart';
import 'package:clean_arch_template/src/domain/utils/Resources.dart';

abstract class AuthRepository {
  Future<Resource<AuthResponse>> getExampleData(String body);
}
