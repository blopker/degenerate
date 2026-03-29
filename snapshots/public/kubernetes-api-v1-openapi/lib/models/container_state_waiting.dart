// GENERATED CODE - DO NOT MODIFY BY HAND

/// ContainerStateWaiting is a waiting state of a container.
final class ContainerStateWaiting {const ContainerStateWaiting({this.message, this.reason, });

factory ContainerStateWaiting.fromJson(Map<String, dynamic> json) { return ContainerStateWaiting(
  message: json['message'] as String?,
  reason: json['reason'] as String?,
); }

/// Message regarding why the container is not yet running.
final String? message;

/// (brief) reason the container is not yet running.
final String? reason;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'reason': ?reason,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'reason'}.contains(key)); } 
ContainerStateWaiting copyWith({String Function()? message, String Function()? reason, }) { return ContainerStateWaiting(
  message: message != null ? message() : this.message,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerStateWaiting &&
          message == other.message &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(message, reason); } 
@override String toString() { return 'ContainerStateWaiting(message: $message, reason: $reason)'; } 
 }
