import 'package:eventpro/services/remote/events/events_interface.dart';
import 'package:flutter/material.dart';

import '../../../../base_view_model.dart';
import '../../../../model/app_state/view_model_state.dart';
import '../../../../services/exceptions/failure.dart';
import '../../../../utils/dialog.dart';
import '../../../../utils/functions.dart';
import '../../../../utils/locator.dart';

class EventsViewModel extends ChangeNotifier {
  //  final AuthService authServices = locator();
  final EventService eventService = locator();
  final BaseViewModel baseViewModel = BaseViewModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController eventName = TextEditingController();
  TextEditingController eventDescription = TextEditingController();
  TextEditingController search = TextEditingController();
  bool checkBoxValue = false;
  String signUpValues = "User";

  scheduleEvent({
    required BuildContext context,
    required String eventname,
    required String date,
    required String time,
    required String eventDescription,
    required List eventTypes,
  }) async {
    baseViewModel.changeState(const ViewModelState.busy());
    try {
      await eventService.scheduleEvent(
       eventname: eventname,
      date: date,
      time: time,
      eventDescription: eventDescription,
      eventTypes: eventTypes,
      );
      showMyToast("Sign In Successful");
      baseViewModel.changeState(const ViewModelState.idle());
      showMyDialog(context, "Event schedule successful");
      notifyListeners();
    } on Failure {
      baseViewModel.changeState(const ViewModelState.idle());
      notifyListeners();
      showMyToast("An error occured");
    }
    baseViewModel.changeState(const ViewModelState.idle());
  }
}
