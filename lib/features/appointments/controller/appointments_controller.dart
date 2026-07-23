import 'package:get/get.dart';
import 'package:tabibi_app/features/appointments/model/appointment_model.dart';
import 'package:tabibi_app/core/models/appointment_status.dart';

class AppointmentsController extends GetxController {
  int selectedTab = 0; 
  

  final List<AppointmentModel> appointmentCardList = [
    AppointmentModel(
      name: 'د. أحمد محمود', specialty: 'استشاري أمراض القلب', image: '', initials: 'أ.م', status: AppointmentStatus.confirmed, date: '١٥ أكتوبر ٢٠٢٣', time: '١٠:٣٠ صباحاً',
    ),
    AppointmentModel(
      name: 'د. سارة علي', specialty: 'استشاري طب الأطفال', image: '', initials: 'س.ع', status: AppointmentStatus.confirmed, date: '٢٠ أكتوبر ٢٠٢٣', time: '٢:٠٠ مساءً',
    ),
    AppointmentModel(
      name: 'د. محمد حسن', specialty: 'استشاري جراحة العظام', image: '', initials: 'م.ح', status: AppointmentStatus.pending, date: '٢٥ أكتوبر ٢٠٢٣', time: '١١:٠٠ صباحاً',
    ),
  ];

  final List<AppointmentModel> past = [];

  void changeTab(int index) {
     selectedTab = index;
     update();}
}
