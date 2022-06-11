import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/presentation/otp/body.dart';
import 'package:test_project/presentation/otp/otp_viewmodel.dart';
import 'package:test_project/presentation/otp/widgets/confirm_btn.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OtpViewModel>.reactive(
      viewModelBuilder: () => OtpViewModel(),
      builder: (context, viewModel, child) {
        return ModalProgressHUD(
          inAsyncCall: viewModel.isBusy,
          child: const Scaffold(
              backgroundColor: AppColors.background,
              body: OtpBody(),
              bottomSheet: ConfirmBtn()),
        );
      },
    );
  }
}
