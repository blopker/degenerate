// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'runner.dart';final class ActionsListSelfHostedRunnersForOrgResponse {const ActionsListSelfHostedRunnersForOrgResponse({required this.totalCount, required this.runners, });

factory ActionsListSelfHostedRunnersForOrgResponse.fromJson(Map<String, dynamic> json) { return ActionsListSelfHostedRunnersForOrgResponse(
  totalCount: (json['total_count'] as num).toInt(),
  runners: (json['runners'] as List<dynamic>).map((e) => Runner.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<Runner> runners;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'runners': runners.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('runners'); } 
ActionsListSelfHostedRunnersForOrgResponse copyWith({int? totalCount, List<Runner>? runners, }) { return ActionsListSelfHostedRunnersForOrgResponse(
  totalCount: totalCount ?? this.totalCount,
  runners: runners ?? this.runners,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsListSelfHostedRunnersForOrgResponse &&
          totalCount == other.totalCount &&
          listEquals(runners, other.runners); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(runners)); } 
@override String toString() { return 'ActionsListSelfHostedRunnersForOrgResponse(totalCount: $totalCount, runners: $runners)'; } 
 }
