// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersTestClocksTestClockAdvanceRequest {const PostTestHelpersTestClocksTestClockAdvanceRequest({required this.frozenTime, this.expand, });

factory PostTestHelpersTestClocksTestClockAdvanceRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersTestClocksTestClockAdvanceRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  frozenTime: (json['frozen_time'] as num).toInt(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The time to advance the test clock. Must be after the test clock's current frozen time. Cannot be more than two intervals in the future from the shortest subscription in this test clock. If there are no subscriptions in this test clock, it cannot be more than two years in the future.
final int frozenTime;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'frozen_time': frozenTime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frozen_time') && json['frozen_time'] is num; } 
PostTestHelpersTestClocksTestClockAdvanceRequest copyWith({List<String> Function()? expand, int? frozenTime, }) { return PostTestHelpersTestClocksTestClockAdvanceRequest(
  expand: expand != null ? expand() : this.expand,
  frozenTime: frozenTime ?? this.frozenTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTestClocksTestClockAdvanceRequest &&
          listEquals(expand, other.expand) &&
          frozenTime == other.frozenTime; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), frozenTime); } 
@override String toString() { return 'PostTestHelpersTestClocksTestClockAdvanceRequest(expand: $expand, frozenTime: $frozenTime)'; } 
 }
