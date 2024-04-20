import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndBackgroundLogoAndText extends StatelessWidget {
  const DocImageAndBackgroundLogoAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 30,
          child: SvgPicture.asset(
            'assets/svgs/docOnboardingBackgroundLogo.svg',
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.06, 0.4],
            ),
          ),
          child: Image.asset(
            'assets/images/docImage.png',
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Best Doctor\nAppointment App",
                  style: Styles.font32BlueBold,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
