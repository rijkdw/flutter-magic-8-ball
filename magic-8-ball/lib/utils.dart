import 'package:vibration/vibration.dart';

void attemptVibrate(int msDuration) async {
  if (await Vibration.hasVibrator()) Vibration.vibrate(duration: msDuration);
}