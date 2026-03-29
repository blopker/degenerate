// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_dependabot_secret.dart';final class DependabotListOrgSecretsResponse {const DependabotListOrgSecretsResponse({required this.totalCount, required this.secrets, });

factory DependabotListOrgSecretsResponse.fromJson(Map<String, dynamic> json) { return DependabotListOrgSecretsResponse(
  totalCount: (json['total_count'] as num).toInt(),
  secrets: (json['secrets'] as List<dynamic>).map((e) => OrganizationDependabotSecret.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<OrganizationDependabotSecret> secrets;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'secrets': secrets.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('secrets'); } 
DependabotListOrgSecretsResponse copyWith({int? totalCount, List<OrganizationDependabotSecret>? secrets, }) { return DependabotListOrgSecretsResponse(
  totalCount: totalCount ?? this.totalCount,
  secrets: secrets ?? this.secrets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotListOrgSecretsResponse &&
          totalCount == other.totalCount &&
          listEquals(secrets, other.secrets); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(secrets)); } 
@override String toString() { return 'DependabotListOrgSecretsResponse(totalCount: $totalCount, secrets: $secrets)'; } 
 }
