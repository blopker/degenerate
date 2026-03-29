// GENERATED CODE - DO NOT MODIFY BY HAND

/// The amount of time to delay a job after the job is initially triggered. The time (in minutes) must be an integer between 0 and 43,200 (30 days).
extension type const WaitTimer(int value) {
factory WaitTimer.fromJson(num json) => WaitTimer(json.toInt());

num toJson() => value;

}
