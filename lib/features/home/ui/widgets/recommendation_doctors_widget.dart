import 'package:appointment_app/core/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorsWidget extends StatelessWidget {
  const RecommendationDoctorsWidget({super.key});

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
