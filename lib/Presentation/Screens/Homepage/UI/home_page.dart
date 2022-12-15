import 'package:flutter/material.dart';
import 'package:qr_generator_app/Presentation/Components/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: title),
    );
  }
}
