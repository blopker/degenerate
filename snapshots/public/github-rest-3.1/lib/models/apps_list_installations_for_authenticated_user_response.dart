// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installation.dart';@immutable final class AppsListInstallationsForAuthenticatedUserResponse {const AppsListInstallationsForAuthenticatedUserResponse({required this.totalCount, required this.installations, });

factory AppsListInstallationsForAuthenticatedUserResponse.fromJson(Map<String, dynamic> json) { return AppsListInstallationsForAuthenticatedUserResponse(
  totalCount: (json['total_count'] as num).toInt(),
  installations: (json['installations'] as List<dynamic>).map((e) => Installation.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<Installation> installations;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'installations': installations.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('installations'); } 
AppsListInstallationsForAuthenticatedUserResponse copyWith({int? totalCount, List<Installation>? installations, }) { return AppsListInstallationsForAuthenticatedUserResponse(
  totalCount: totalCount ?? this.totalCount,
  installations: installations ?? this.installations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppsListInstallationsForAuthenticatedUserResponse &&
          totalCount == other.totalCount &&
          listEquals(installations, other.installations); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(installations)); } 
@override String toString() { return 'AppsListInstallationsForAuthenticatedUserResponse(totalCount: $totalCount, installations: $installations)'; } 
 }
