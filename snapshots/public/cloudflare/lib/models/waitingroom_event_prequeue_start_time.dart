// GENERATED CODE - DO NOT MODIFY BY HAND

/// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `event_start_time`.
extension type const WaitingroomEventPrequeueStartTime(String value) {
factory WaitingroomEventPrequeueStartTime.fromJson(String json) => WaitingroomEventPrequeueStartTime(json);

String toJson() => value;

}
