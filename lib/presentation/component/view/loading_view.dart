import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Center(
        child: SizedBox(
          height: 22,
          width: 22,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0597F8)),
          ),
        ),
      ),
    );
  }
}
