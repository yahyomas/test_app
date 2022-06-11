import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/presentation/home/home_viewmodel.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) => model.onReady(),
        builder: (context, viewModel, child) {
          return Scaffold(
              backgroundColor: AppColors.background,
              appBar: AppBar(
                backgroundColor: AppColors.background,
                elevation: 0,
                title: const Text(
                  'Hey! Welcome back',
                  style: TextStyles.mainBold,
                ),
              ),
              body: const HomeBody());
        });
  }
}
