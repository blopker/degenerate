// GENERATED CODE - DO NOT MODIFY BY HAND

/// If set, the event will override the waiting room's `session_duration` property while it is active. If null, the event will inherit it.
extension type const WaitingroomEventSessionDuration(int value) {
factory WaitingroomEventSessionDuration.fromJson(num json) => WaitingroomEventSessionDuration(json.toInt());

num toJson() => value;

}
