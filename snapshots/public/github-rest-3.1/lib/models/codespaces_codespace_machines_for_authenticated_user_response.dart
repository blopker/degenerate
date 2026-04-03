// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'codespace_machine.dart';@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserResponse {const CodespacesCodespaceMachinesForAuthenticatedUserResponse({required this.totalCount, required this.machines, });

factory CodespacesCodespaceMachinesForAuthenticatedUserResponse.fromJson(Map<String, dynamic> json) { return CodespacesCodespaceMachinesForAuthenticatedUserResponse(
  totalCount: (json['total_count'] as num).toInt(),
  machines: (json['machines'] as List<dynamic>).map((e) => CodespaceMachine.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<CodespaceMachine> machines;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'machines': machines.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('machines'); } 
CodespacesCodespaceMachinesForAuthenticatedUserResponse copyWith({int? totalCount, List<CodespaceMachine>? machines, }) { return CodespacesCodespaceMachinesForAuthenticatedUserResponse(
  totalCount: totalCount ?? this.totalCount,
  machines: machines ?? this.machines,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesCodespaceMachinesForAuthenticatedUserResponse &&
          totalCount == other.totalCount &&
          listEquals(machines, other.machines); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(machines)); } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserResponse(totalCount: $totalCount, machines: $machines)'; } 
 }
