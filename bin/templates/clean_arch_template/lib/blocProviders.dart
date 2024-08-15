import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_template/injection.dart';
import 'package:clean_arch_template/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_event.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<ExampleBloc>(
    create: (context) =>
        ExampleBloc(locator<AuthUseCases>())..add(LoginInitEvent()),
  )
];
