import 'package:appointment_app/features/home/data/models/specializations_response_model/doctor.dart';
import 'package:appointment_app/features/home/ui/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({
    super.key,
    this.doctorsList,
  });

  final List<Doctor?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thumbVisibility: false,
        interactive: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: doctorsList!.length,
          itemBuilder: (context, index) {
            return DoctorsListViewItem(
              doctorsList: doctorsList,
              itemIndex: index,
            );
          },
        ),
      ),
    );
  }
}
