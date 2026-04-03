// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'end_reason.dart';

@immutable
final class EndRoomEvent {
  const EndRoomEvent({required this.reason, this.type = 'end_room'});

  factory EndRoomEvent.fromJson(Map<String, dynamic> json) {
    return EndRoomEvent(
      type: json.containsKey('type') ? json['type'] as String : 'end_room',
      reason: EndReason.fromJson(json['reason'] as String),
    );
  }

  final String type;

  final EndReason reason;

  Map<String, dynamic> toJson() {
    return {'type': type, 'reason': reason.toJson()};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('reason');
  }

  EndRoomEvent copyWith({String Function()? type, EndReason? reason}) {
    return EndRoomEvent(
      type: type != null ? type() : this.type,
      reason: reason ?? this.reason,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EndRoomEvent && type == other.type && reason == other.reason;
  }

  @override
  int get hashCode {
    return Object.hash(type, reason);
  }

  @override
  String toString() {
    return 'EndRoomEvent(type: $type, reason: $reason)';
  }
}
