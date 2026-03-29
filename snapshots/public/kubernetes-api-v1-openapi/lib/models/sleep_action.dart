// GENERATED CODE - DO NOT MODIFY BY HAND

/// SleepAction describes a "sleep" action.
final class SleepAction {const SleepAction({this.seconds = 0});

factory SleepAction.fromJson(Map<String, dynamic> json) { return SleepAction(
  seconds: (json['seconds'] as num).toInt(),
); }

/// Seconds is the number of seconds to sleep.
final int seconds;

Map<String, dynamic> toJson() { return {
  'seconds': seconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('seconds') && json['seconds'] is num; } 
SleepAction copyWith({int? seconds}) { return SleepAction(
  seconds: seconds ?? this.seconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SleepAction &&
          seconds == other.seconds; } 
@override int get hashCode { return seconds.hashCode; } 
@override String toString() { return 'SleepAction(seconds: $seconds)'; } 
 }
