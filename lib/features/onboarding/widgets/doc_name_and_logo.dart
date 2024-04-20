import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocNameAndLogo extends StatelessWidget {
  const DocNameAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docLogo.svg'),
        SizedBox(width: 8.w),
        SvgPicture.asset('assets/svgs/docName.svg'),
      ],
    );
  }
}
