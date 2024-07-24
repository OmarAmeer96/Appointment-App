import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopAppBar extends StatelessWidget {
  const HomeTopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: Styles.font18BlackBold,
            ),
            Text(
              'How Are you Today?',
              style: Styles.font18BlackBold.copyWith(
                color: const Color(0xFF616161),
                fontSize: 13.sp,
                fontFamily: FontFamilyHelper.regular,
              ),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(50.r),
          onTap: () {},
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: const Color(0xFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svgs/notifications_icon_2.svg',
                  height: 21.h,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
