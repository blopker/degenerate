// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActivitySetThreadSubscriptionRequest {const ActivitySetThreadSubscriptionRequest({this.ignored = false});

factory ActivitySetThreadSubscriptionRequest.fromJson(Map<String, dynamic> json) { return ActivitySetThreadSubscriptionRequest(
  ignored: json.containsKey('ignored') ? json['ignored'] as bool : false,
); }

/// Whether to block all notifications from a thread.
final bool ignored;

Map<String, dynamic> toJson() { return {
  'ignored': ignored,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ActivitySetThreadSubscriptionRequest copyWith({bool Function()? ignored}) { return ActivitySetThreadSubscriptionRequest(
  ignored: ignored != null ? ignored() : this.ignored,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActivitySetThreadSubscriptionRequest &&
          ignored == other.ignored; } 
@override int get hashCode { return ignored.hashCode; } 
@override String toString() { return 'ActivitySetThreadSubscriptionRequest(ignored: $ignored)'; } 
 }
