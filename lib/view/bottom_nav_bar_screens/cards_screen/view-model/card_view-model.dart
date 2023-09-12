import 'package:eventpro/base_view_model.dart';
import 'package:eventpro/model/app_state/view_model_state.dart';
import 'package:eventpro/services/exceptions/failure.dart';
import 'package:eventpro/services/remote/events/events_interface.dart';
import 'package:eventpro/utils/dialog.dart';
import 'package:eventpro/utils/functions.dart';
import 'package:eventpro/utils/locator.dart';
import 'package:flutter/material.dart';

class CardsViewModel extends ChangeNotifier {
  //  final AuthService authServices = locator();

  TextEditingController recipientName = TextEditingController();
  TextEditingController recipientEmailAddress = TextEditingController();
  final EventService eventService = locator();
  final BaseViewModel baseViewModel = BaseViewModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  scheduleWishCard({
    required BuildContext context,
     required String wishCard,
    required String recipientName,
    required int day,
    required int month,
    required int year,
    required int hours,
    required int minutes,
  }) async {
    baseViewModel.changeState(const ViewModelState.busy());
    try {
      await eventService.scheduleWishCard(
        wishCard: wishCard,
        recipientName: recipientName,
        day: day,
        month: month,
        year: year,
        hours: hours,
        minutes: minutes,
      );
      

      baseViewModel.changeState(const ViewModelState.idle());
      showMyDialog(context, "Wish Card schedule successful");
      notifyListeners();
    } on Failure {
      baseViewModel.changeState(const ViewModelState.idle());
      notifyListeners();
      showMyToast("An error occured");
    }
    baseViewModel.changeState(const ViewModelState.idle());
  }
}
