import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/presentation/otp/otp_viewmodel.dart';

class ResendCode extends ViewModelWidget<OtpViewModel> {
  const ResendCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OtpViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        GestureDetector(
          onTap: viewModel.onResendCode,
          child: const Text.rich(
            TextSpan(
              text: 'Didn’t receive the code?',
              style: TextStyles.title14,
              children: <InlineSpan>[
                TextSpan(
                  text: ' Send again!',
                  style: TextStyle(color: AppColors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
