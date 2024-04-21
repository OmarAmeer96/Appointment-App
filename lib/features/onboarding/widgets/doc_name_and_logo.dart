import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocNameAndLogo extends StatelessWidget {
  const DocNameAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docLogo.svg'),
        horizontalSpace(8),
        SvgPicture.asset('assets/svgs/docName.svg'),
      ],
    );
  }
}
