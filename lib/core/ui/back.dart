import 'package:flutter/material.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/domain/services/navigation_service.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => NavigationService.back(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.backBtnColor),
        height: 40,
        width: 40,
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
