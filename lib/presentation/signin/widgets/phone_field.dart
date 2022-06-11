import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/drawables/drawables.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/presentation/signin/signin_viewmodel.dart';

class PhoneField extends ViewModelWidget<SignInViewModel> {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, SignInViewModel viewModel) {
    return TextFormField(
      controller: viewModel.controller,
      keyboardType: TextInputType.number,
      style: TextStyles.title14,
      inputFormatters: [viewModel.maskFormatter],
      decoration: InputDecoration(
        isDense: true,
        hintText: "Phone number",
        hintStyle: TextStyles.ordinary14,
        prefix: const Text(
          '+ ',
          style: TextStyles.title14,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            AppDrawables.phone,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
