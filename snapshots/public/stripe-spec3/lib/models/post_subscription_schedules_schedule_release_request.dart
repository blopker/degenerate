// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSubscriptionSchedulesScheduleReleaseRequest {const PostSubscriptionSchedulesScheduleReleaseRequest({this.expand, this.preserveCancelDate, });

factory PostSubscriptionSchedulesScheduleReleaseRequest.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleReleaseRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  preserveCancelDate: json['preserve_cancel_date'] as bool?,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Keep any cancellation on the subscription that the schedule has set
final bool? preserveCancelDate;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'preserve_cancel_date': ?preserveCancelDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSubscriptionSchedulesScheduleReleaseRequest copyWith({List<String> Function()? expand, bool Function()? preserveCancelDate, }) { return PostSubscriptionSchedulesScheduleReleaseRequest(
  expand: expand != null ? expand() : this.expand,
  preserveCancelDate: preserveCancelDate != null ? preserveCancelDate() : this.preserveCancelDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleReleaseRequest &&
          listEquals(expand, other.expand) &&
          preserveCancelDate == other.preserveCancelDate; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), preserveCancelDate); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleReleaseRequest(expand: $expand, preserveCancelDate: $preserveCancelDate)'; } 
 }
