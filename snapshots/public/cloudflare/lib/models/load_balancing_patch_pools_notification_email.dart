// GENERATED CODE - DO NOT MODIFY BY HAND

/// The email address to send health status notifications to. This field is now deprecated in favor of Cloudflare Notifications for Load Balancing, so only resetting this field with an empty string `""` is accepted.
final class LoadBalancingPatchPoolsNotificationEmail {const LoadBalancingPatchPoolsNotificationEmail._(this.value);

factory LoadBalancingPatchPoolsNotificationEmail.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => LoadBalancingPatchPoolsNotificationEmail._(json),
}; }

static const LoadBalancingPatchPoolsNotificationEmail $empty = LoadBalancingPatchPoolsNotificationEmail._('');

static const List<LoadBalancingPatchPoolsNotificationEmail> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingPatchPoolsNotificationEmail && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingPatchPoolsNotificationEmail($value)'; } 
 }
