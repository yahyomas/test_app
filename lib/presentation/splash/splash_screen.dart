import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/drawables/drawables.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/presentation/splash/splash_viewmodel.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onModelReady: (model) => model.onViewModelReady(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: AppColors.background,
            body: Center(child: SvgPicture.asset(AppDrawables.logo)),
          );
        });
  }
}
