import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/core/ui/custom_button.dart';
import 'package:test_project/presentation/signin/signin_viewmodel.dart';

class SignInBtn extends ViewModelWidget<SignInViewModel> {
  const SignInBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, SignInViewModel viewModel) {
    return ColoredBox(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: CustomButton(
          text: 'Log into account',
          onPressed: viewModel.onSubmit,
        ),
      ),
    );
  }
}
