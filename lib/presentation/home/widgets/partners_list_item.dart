import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_project/core/srtyles/index.dart';
import 'package:test_project/data/models/partners/partners_response.dart';

class PartnersListItem extends StatelessWidget {
  final Partner partner;

  const PartnersListItem({Key? key, required this.partner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.secondary, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: partner.logo,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  partner.title,
                  style: TextStyles.title16,
                ),
                Text(
                  partner.desc,
                  style: TextStyles.ordinary14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
