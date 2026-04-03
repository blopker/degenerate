// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ChecksCreateSuiteRequest {const ChecksCreateSuiteRequest({required this.headSha});

factory ChecksCreateSuiteRequest.fromJson(Map<String, dynamic> json) { return ChecksCreateSuiteRequest(
  headSha: json['head_sha'] as String,
); }

/// The sha of the head commit.
final String headSha;

Map<String, dynamic> toJson() { return {
  'head_sha': headSha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('head_sha') && json['head_sha'] is String; } 
ChecksCreateSuiteRequest copyWith({String? headSha}) { return ChecksCreateSuiteRequest(
  headSha: headSha ?? this.headSha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksCreateSuiteRequest &&
          headSha == other.headSha; } 
@override int get hashCode { return headSha.hashCode; } 
@override String toString() { return 'ChecksCreateSuiteRequest(headSha: $headSha)'; } 
 }
