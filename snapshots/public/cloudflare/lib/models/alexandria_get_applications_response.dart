// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alexandria_application.dart';final class AlexandriaGetApplicationsResponse {const AlexandriaGetApplicationsResponse({this.result});

factory AlexandriaGetApplicationsResponse.fromJson(Map<String, dynamic> json) { return AlexandriaGetApplicationsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => AlexandriaApplication.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Returns the list of applications.
final List<AlexandriaApplication>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AlexandriaGetApplicationsResponse copyWith({List<AlexandriaApplication> Function()? result}) { return AlexandriaGetApplicationsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlexandriaGetApplicationsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AlexandriaGetApplicationsResponse(result: $result)'; } 
 }
