// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_post_commands_response.dart';@immutable final class PostCommandsResponse {const PostCommandsResponse({this.result});

factory PostCommandsResponse.fromJson(Map<String, dynamic> json) { return PostCommandsResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringPostCommandsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringPostCommandsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PostCommandsResponse copyWith({DigitalExperienceMonitoringPostCommandsResponse Function()? result}) { return PostCommandsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCommandsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PostCommandsResponse(result: $result)'; } 
 }
