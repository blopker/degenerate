// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'codespaces_org_secret.dart';@immutable final class CodespacesListOrgSecretsResponse {const CodespacesListOrgSecretsResponse({required this.totalCount, required this.secrets, });

factory CodespacesListOrgSecretsResponse.fromJson(Map<String, dynamic> json) { return CodespacesListOrgSecretsResponse(
  totalCount: (json['total_count'] as num).toInt(),
  secrets: (json['secrets'] as List<dynamic>).map((e) => CodespacesOrgSecret.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<CodespacesOrgSecret> secrets;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'secrets': secrets.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('secrets'); } 
CodespacesListOrgSecretsResponse copyWith({int? totalCount, List<CodespacesOrgSecret>? secrets, }) { return CodespacesListOrgSecretsResponse(
  totalCount: totalCount ?? this.totalCount,
  secrets: secrets ?? this.secrets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesListOrgSecretsResponse &&
          totalCount == other.totalCount &&
          listEquals(secrets, other.secrets); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(secrets)); } 
@override String toString() { return 'CodespacesListOrgSecretsResponse(totalCount: $totalCount, secrets: $secrets)'; } 
 }
