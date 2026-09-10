// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActivitySetThreadSubscriptionRequest {const ActivitySetThreadSubscriptionRequest({this.ignored});

factory ActivitySetThreadSubscriptionRequest.fromJson(Map<String, dynamic> json) { return ActivitySetThreadSubscriptionRequest(
  ignored: json['ignored'] as bool?,
); }

/// Whether to block all notifications from a thread.
final bool? ignored;

/// The value with the schema default applied when absent.
bool get ignoredOrDefault { return ignored ?? false; } 
Map<String, dynamic> toJson() { return {
  'ignored': ?ignored,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ignored'}.contains(key)); } 
ActivitySetThreadSubscriptionRequest copyWith({bool? Function()? ignored}) { return ActivitySetThreadSubscriptionRequest(
  ignored: ignored != null ? ignored() : this.ignored,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActivitySetThreadSubscriptionRequest &&
          ignored == other.ignored; } 
@override int get hashCode { return ignored.hashCode; } 
@override String toString() { return 'ActivitySetThreadSubscriptionRequest(ignored: $ignored)'; } 
 }
