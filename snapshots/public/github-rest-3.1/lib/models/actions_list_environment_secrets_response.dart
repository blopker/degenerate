// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actions_secret.dart';@immutable final class ActionsListEnvironmentSecretsResponse {const ActionsListEnvironmentSecretsResponse({required this.totalCount, required this.secrets, });

factory ActionsListEnvironmentSecretsResponse.fromJson(Map<String, dynamic> json) { return ActionsListEnvironmentSecretsResponse(
  totalCount: (json['total_count'] as num).toInt(),
  secrets: (json['secrets'] as List<dynamic>).map((e) => ActionsSecret.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<ActionsSecret> secrets;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'secrets': secrets.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('secrets'); } 
ActionsListEnvironmentSecretsResponse copyWith({int? totalCount, List<ActionsSecret>? secrets, }) { return ActionsListEnvironmentSecretsResponse(
  totalCount: totalCount ?? this.totalCount,
  secrets: secrets ?? this.secrets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsListEnvironmentSecretsResponse &&
          totalCount == other.totalCount &&
          listEquals(secrets, other.secrets); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(secrets)); } 
@override String toString() { return 'ActionsListEnvironmentSecretsResponse(totalCount: $totalCount, secrets: $secrets)'; } 
 }
