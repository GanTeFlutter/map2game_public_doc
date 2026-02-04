import 'package:flutter/material.dart';

part 'step_2_view_model.dart';

/// Onboarding Step 2 - Location Permission & City Selection
class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends Step2ViewModel {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
