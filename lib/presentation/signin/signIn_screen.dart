import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/core/ui/keyboard_escape.dart';
import 'package:test_project/presentation/signin/body.dart';
import 'package:test_project/presentation/signin/signin_viewmodel.dart';
import 'package:test_project/presentation/signin/widgets/sign_btn.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInViewModel>.reactive(
        viewModelBuilder: () => SignInViewModel(),
        builder: (context, viewModel, child) {
          return ModalProgressHUD(
            inAsyncCall: viewModel.isBusy,
            child: const KeyboardEscape(
              child: Scaffold(
                  backgroundColor: AppColors.background,
                  body: SignInBody(),
                  bottomSheet: SignInBtn()),
            ),
          );
        });
  }
}
