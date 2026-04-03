// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Feature options for Automatic dependency submission
@immutable final class CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions {const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions({this.labeledRunners = false});

factory CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions(
  labeledRunners: json.containsKey('labeled_runners') ? json['labeled_runners'] as bool : false,
); }

/// Whether to use runners labeled with 'dependency-submission' or standard GitHub runners.
final bool labeledRunners;

Map<String, dynamic> toJson() { return {
  'labeled_runners': labeledRunners,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'labeled_runners'}.contains(key)); } 
CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions copyWith({bool Function()? labeledRunners}) { return CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions(
  labeledRunners: labeledRunners != null ? labeledRunners() : this.labeledRunners,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions &&
          labeledRunners == other.labeledRunners; } 
@override int get hashCode { return labeledRunners.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions(labeledRunners: $labeledRunners)'; } 
 }
