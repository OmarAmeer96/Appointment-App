import 'package:appointment_app/core/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorsListView extends StatelessWidget {
  const RecommendationDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(
          title: "Recommendation Doctor",
          seeAllOnTap: () {},
        ),
      ],
    );
  }
}
