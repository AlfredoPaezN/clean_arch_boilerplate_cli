import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_bloc.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/bloc/example_state.dart';
import 'package:clean_arch_template/src/presentation/pages/auth/example/example_content.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: BlocListener<ExampleBloc, ExampleState>(
        listener: (context, state) => {
          if (state.text != null) {print('STATE TEXT ${state.text}')}
        },
        child: BlocBuilder<ExampleBloc, ExampleState>(
          builder: (context, state) {
            if (state.text != null) {
              print('STATE TEXT ${state.text}');
            }
            return LoginContent(
              state: state,
            );
          },
        ),
      ),
    );
  }
}
