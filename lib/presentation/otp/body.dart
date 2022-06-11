import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/core/ui/back.dart';
import 'package:test_project/presentation/otp/otp_viewmodel.dart';

import 'widgets/otp_field.dart';
import 'widgets/resend_code.dart';

class OtpBody extends ViewModelWidget<OtpViewModel> {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OtpViewModel viewModel) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BackBtn(),
                SizedBox(height: 24),
                Text(
                  'Hey! Welcome back',
                  style: TextStyles.mainBold,
                ),
                SizedBox(height: 8),
                Text(
                  'Sign In to your account',
                  style: TextStyles.ordinary16,
                ),
                SizedBox(height: 32),
                OtpField(),
                SizedBox(height: 43),
                ResendCode(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
