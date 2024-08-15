import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_template/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:clean_arch_template/src/domain/utils/Resources.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_event.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_state.dart';
import 'package:clean_arch_template/src/presentation/utils/bloc_form_item.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  final formKey = GlobalKey<FormState>();
  AuthUseCases authUseCases;

  ExampleBloc(
    this.authUseCases,
  ) : super(const ExampleState()) {
    on<LoginInitEvent>((event, emit) {
      emit(state.copyWith(formKey: formKey));
    });

    on<ImputChanged>((event, emit) {
      emit(state.copyWith(
        email: BlocFormItem(
          value: event.imputText.value,
          error: event.imputText.value.isEmpty ? 'Input a valid email' : null,
        ),
        formKey: formKey,
      ));
    });

    on<FormSubmit>((event, emit) async {
      print(
        'TESTING ${state.textFormField.value}',
      );
      Resource response =
          await authUseCases.exampleUseCase.run(state.textFormField.value);
      print('RESPONSE ${response.toString()}');
      emit(state.copyWith(text: state.textFormField.value));
    });
  }
}
