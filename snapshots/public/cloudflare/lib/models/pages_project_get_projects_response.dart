// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_project.dart';final class PagesProjectGetProjectsResponse {const PagesProjectGetProjectsResponse({required this.result});

factory PagesProjectGetProjectsResponse.fromJson(Map<String, dynamic> json) { return PagesProjectGetProjectsResponse(
  result: (json['result'] as List<dynamic>).map((e) => PagesProject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PagesProject> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PagesProjectGetProjectsResponse copyWith({List<PagesProject>? result}) { return PagesProjectGetProjectsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectGetProjectsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'PagesProjectGetProjectsResponse(result: $result)'; } 
 }
