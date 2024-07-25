import 'package:appointment_app/core/theming/colors_manager.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 167.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                image: AssetImage('assets/images/blue_container.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 15.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nsched ule with\nnearest doctor',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.r),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.w,
                      vertical: 10.h,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Find Nearby',
                    style: Styles.font13GreyBold.copyWith(
                      color: ColorsManager.mainBlue,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.h,
            bottom: 0,
            right: 15.w,
            child: Image.asset(
              'assets/images/blue_container_doctor.png',
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}
