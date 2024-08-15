import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_event.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_state.dart';
import 'package:clean_arch_template/src/presentation/utils/bloc_form_item.dart';
import 'package:clean_arch_template/src/presentation/widgets/custom_button.dart';
import 'package:clean_arch_template/src/presentation/widgets/custom_text_field.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({this.state, super.key});

  final ExampleState? state;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Form(
      key: state?.formKey,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 64),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  _textWelcome('Clean Architecture'),
                  _textWelcome('Dependency Injection'),
                  _textWelcome('Bloc'),
                  _textWelcome('MVVM'),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  CustomTextField(
                    text: 'Example text',
                    icon: Icons.email_outlined,
                    onChanged: (text) {
                      context.read<ExampleBloc>().add(
                            ImputChanged(imputText: BlocFormItem(value: text)),
                          );
                    },
                    validator: (value) {
                      return context
                          .read<ExampleBloc>()
                          .state
                          .textFormField
                          .error;
                    },
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  _textWelcome(state?.text ?? "No text"),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  CustomButton(
                    text: 'Testing',
                    onPressed: () {
                      context.read<ExampleBloc>().add(FormSubmit());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF4B4B4B),
      ),
    );
  }
}
