// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ActionsGetHostedRunnersPlatformsForOrgResponse {const ActionsGetHostedRunnersPlatformsForOrgResponse({required this.totalCount, required this.platforms, });

factory ActionsGetHostedRunnersPlatformsForOrgResponse.fromJson(Map<String, dynamic> json) { return ActionsGetHostedRunnersPlatformsForOrgResponse(
  totalCount: (json['total_count'] as num).toInt(),
  platforms: (json['platforms'] as List<dynamic>).map((e) => e as String).toList(),
); }

final int totalCount;

final List<String> platforms;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'platforms': platforms,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('platforms'); } 
ActionsGetHostedRunnersPlatformsForOrgResponse copyWith({int? totalCount, List<String>? platforms, }) { return ActionsGetHostedRunnersPlatformsForOrgResponse(
  totalCount: totalCount ?? this.totalCount,
  platforms: platforms ?? this.platforms,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsGetHostedRunnersPlatformsForOrgResponse &&
          totalCount == other.totalCount &&
          listEquals(platforms, other.platforms); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(platforms)); } 
@override String toString() { return 'ActionsGetHostedRunnersPlatformsForOrgResponse(totalCount: $totalCount, platforms: $platforms)'; } 
 }
