import 'package:clean_arch_template/src/presentation/utils/bloc_form_item.dart';

abstract class ExampleEvent {}

class LoginInitEvent extends ExampleEvent {}

class ImputChanged extends ExampleEvent {
  final BlocFormItem imputText;
  ImputChanged({required this.imputText});
}

class FormSubmit extends ExampleEvent {}
