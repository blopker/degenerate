// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'environment.dart';final class ReposGetAllEnvironmentsResponse {const ReposGetAllEnvironmentsResponse({this.totalCount, this.environments, });

factory ReposGetAllEnvironmentsResponse.fromJson(Map<String, dynamic> json) { return ReposGetAllEnvironmentsResponse(
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  environments: (json['environments'] as List<dynamic>?)?.map((e) => Environment.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The number of environments in this repository
final int? totalCount;

final List<Environment>? environments;

Map<String, dynamic> toJson() { return {
  'total_count': ?totalCount,
  if (environments != null) 'environments': environments?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_count', 'environments'}.contains(key)); } 
ReposGetAllEnvironmentsResponse copyWith({int Function()? totalCount, List<Environment> Function()? environments, }) { return ReposGetAllEnvironmentsResponse(
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  environments: environments != null ? environments() : this.environments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposGetAllEnvironmentsResponse &&
          totalCount == other.totalCount &&
          listEquals(environments, other.environments); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(environments ?? const [])); } 
@override String toString() { return 'ReposGetAllEnvironmentsResponse(totalCount: $totalCount, environments: $environments)'; } 
 }
