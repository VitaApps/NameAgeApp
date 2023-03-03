import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:name_age_app/cubit/age_calculator_cubit.dart';
import 'package:name_age_app/pages/widgets/widgets.dart';

class StartPage extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();

  StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textStyle = primaryTextTheme.headlineMedium;
    final animationColors = [
      Colors.orange,
      Colors.white,
      Colors.yellow,
      Colors.blue,
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(77, 90, 244, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextBox(
              labelText: 'Your Name',
              controller: _textController,
              onSubmitted: (name) => context.read<AgeCalculatorCubit>().calculateAge(name: name),
            ),
            const SizedBox(height: 120),
            BlocBuilder<AgeCalculatorCubit, AgeCalculatorState>(
              builder: (context, state) {
                if (state is LoadingState) {
                  return const CircularProgressIndicator();
                } else if (state is LoadedState) {
                  final age = state.nameAge.age;
                  return AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Your Name Age is ${age ?? "Unknown"}",
                        textStyle: textStyle ?? const TextStyle(),
                        colors: animationColors,
                      ),
                    ],
                  );
                } else if (state is ErrorState) {
                  return Text(
                    "Error: ${state.message}",
                    style: textStyle,
                    textAlign: TextAlign.center,
                  );
                }
                return Text(
                  "Name Age Calculator",
                  style: textStyle,
                  textAlign: TextAlign.center,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
