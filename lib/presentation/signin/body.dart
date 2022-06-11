import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/core/ui/back.dart';
import 'package:test_project/presentation/signin/signin_viewmodel.dart';

import 'widgets/phone_field.dart';

class SignInBody extends ViewModelWidget<SignInViewModel> {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, SignInViewModel viewModel) {
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
                PhoneField()
              ],
            )
          ],
        ),
      ),
    );
  }
}
