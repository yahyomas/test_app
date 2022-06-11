import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/core/srtyles/text_styles.dart';
import 'package:test_project/presentation/otp/otp_viewmodel.dart';

class OtpField extends ViewModelWidget<OtpViewModel> {
  const OtpField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OtpViewModel viewModel) {
    final decoration = BoxDecoration(
      color: AppColors.secondary,
      borderRadius: BorderRadius.circular(12.0),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: PinPut(
        fieldsCount: 4,
        controller: viewModel.pinController,
        textStyle: TextStyles.mainBold,
        followingFieldDecoration: decoration,
        disabledDecoration: decoration,
        submittedFieldDecoration: decoration,
        selectedFieldDecoration: decoration.copyWith(
          border: Border.all(color: AppColors.primary, width: 1),
        ),
        eachFieldConstraints:
            const BoxConstraints(minHeight: 56.0, minWidth: 56.0),
      ),
    );
  }
}
