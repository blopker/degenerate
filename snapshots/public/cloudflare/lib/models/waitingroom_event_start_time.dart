// GENERATED CODE - DO NOT MODIFY BY HAND

/// An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `event_end_time`.
extension type const WaitingroomEventStartTime(String value) {
factory WaitingroomEventStartTime.fromJson(String json) => WaitingroomEventStartTime(json);

String toJson() => value;

}
