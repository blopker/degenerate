// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'codespace.dart';@immutable final class CodespacesListInOrganizationResponse {const CodespacesListInOrganizationResponse({required this.totalCount, required this.codespaces, });

factory CodespacesListInOrganizationResponse.fromJson(Map<String, dynamic> json) { return CodespacesListInOrganizationResponse(
  totalCount: (json['total_count'] as num).toInt(),
  codespaces: (json['codespaces'] as List<dynamic>).map((e) => Codespace.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<Codespace> codespaces;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'codespaces': codespaces.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('codespaces'); } 
CodespacesListInOrganizationResponse copyWith({int? totalCount, List<Codespace>? codespaces, }) { return CodespacesListInOrganizationResponse(
  totalCount: totalCount ?? this.totalCount,
  codespaces: codespaces ?? this.codespaces,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesListInOrganizationResponse &&
          totalCount == other.totalCount &&
          listEquals(codespaces, other.codespaces); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(codespaces)); } 
@override String toString() { return 'CodespacesListInOrganizationResponse(totalCount: $totalCount, codespaces: $codespaces)'; } 
 }
