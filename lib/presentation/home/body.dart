import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/presentation/home/home_viewmodel.dart';
import 'package:test_project/presentation/home/widgets/partners_list_item.dart';

class HomeBody extends ViewModelWidget<HomeViewModel> {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    if (viewModel.isBusy) {
      return _shimmer();
    }
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        itemBuilder: (context, index) {
          return PartnersListItem(partner: viewModel.partners[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
        itemCount: viewModel.partners.length);
  }

  Widget _shimmer() {
    return Shimmer.fromColors(
      baseColor: AppColors.secondary,
      highlightColor: AppColors.grey,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          itemBuilder: (context, index) {
            return Container(
              height: 130,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(12)),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 12,
            );
          },
          itemCount: 2),
    );
  }
}
