import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_template/src/presentation/utils/bloc_form_item.dart';

class ExampleState extends Equatable {
  final BlocFormItem textFormField;
  final GlobalKey<FormState>? formKey;
  final String? text;

  const ExampleState({
    this.textFormField = const BlocFormItem(error: 'Input a valid email'),
    this.text,
    this.formKey,
  });

  ExampleState copyWith({
    BlocFormItem? email,
    GlobalKey<FormState>? formKey,
    String? text,
  }) {
    return ExampleState(
      textFormField: email ?? this.textFormField,
      formKey: formKey,
      text: text,
    );
  }

  @override
  List<Object?> get props => [textFormField, text];
}
