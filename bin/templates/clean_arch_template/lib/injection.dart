import 'package:get_it/get_it.dart';
import 'package:clean_arch_template/injection.config.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => await locator.init();
