import "dart:async";

import 'package:get/get.dart';

class TimerController extends GetxController {
  static const maxSeconds = 60;
  var seconds = maxSeconds;
  Timer? timer;
  void startTimer({bool rest = true}) {
    if (rest) {
      resetTimer();
      update();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
        update();
      } else {
        stopTimer(rest: false);
      }
    });
  }

  void resetTimer() {
    seconds = maxSeconds;
    update();
  }

  void stopTimer({bool rest = true}) {
    if (rest) {
      resetTimer();
      update();
    }
    timer?.cancel();
    update();
  }

  bool isTimerRuning() {
    return timer == null ? false : timer!.isActive;
  }

  bool isCompleted() {
    return seconds == maxSeconds || seconds == 0;
  }
}
