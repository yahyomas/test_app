import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/core/ui/custom_button.dart';
import 'package:test_project/presentation/otp/otp_viewmodel.dart';

class ConfirmBtn extends ViewModelWidget<OtpViewModel> {
  const ConfirmBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OtpViewModel viewModel) {
    return ColoredBox(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: CustomButton(
          text: 'Continue',
          onPressed: viewModel.onSubmitOtp,
        ),
      ),
    );
  }
}
