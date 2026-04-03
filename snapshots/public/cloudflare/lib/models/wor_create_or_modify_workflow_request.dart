// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_create_or_modify_workflow_request_limits.dart';@immutable final class WorCreateOrModifyWorkflowRequest {const WorCreateOrModifyWorkflowRequest({required this.className, required this.scriptName, this.limits, });

factory WorCreateOrModifyWorkflowRequest.fromJson(Map<String, dynamic> json) { return WorCreateOrModifyWorkflowRequest(
  className: json['class_name'] as String,
  limits: json['limits'] != null ? WorCreateOrModifyWorkflowRequestLimits.fromJson(json['limits'] as Map<String, dynamic>) : null,
  scriptName: json['script_name'] as String,
); }

final String className;

final WorCreateOrModifyWorkflowRequestLimits? limits;

final String scriptName;

Map<String, dynamic> toJson() { return {
  'class_name': className,
  if (limits != null) 'limits': limits?.toJson(),
  'script_name': scriptName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('class_name') && json['class_name'] is String &&
      json.containsKey('script_name') && json['script_name'] is String; } 
WorCreateOrModifyWorkflowRequest copyWith({String? className, WorCreateOrModifyWorkflowRequestLimits Function()? limits, String? scriptName, }) { return WorCreateOrModifyWorkflowRequest(
  className: className ?? this.className,
  limits: limits != null ? limits() : this.limits,
  scriptName: scriptName ?? this.scriptName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorCreateOrModifyWorkflowRequest &&
          className == other.className &&
          limits == other.limits &&
          scriptName == other.scriptName; } 
@override int get hashCode { return Object.hash(className, limits, scriptName); } 
@override String toString() { return 'WorCreateOrModifyWorkflowRequest(className: $className, limits: $limits, scriptName: $scriptName)'; } 
 }
