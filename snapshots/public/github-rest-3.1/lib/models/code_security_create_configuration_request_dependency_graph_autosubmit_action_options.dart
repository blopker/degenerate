// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Feature options for Automatic dependency submission
@immutable final class CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions {const CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions({this.labeledRunners});

factory CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions(
  labeledRunners: json['labeled_runners'] as bool?,
); }

/// Whether to use runners labeled with 'dependency-submission' or standard GitHub runners.
final bool? labeledRunners;

/// The value with the schema default applied when absent.
bool get labeledRunnersOrDefault { return labeledRunners ?? false; } 
Map<String, dynamic> toJson() { return {
  'labeled_runners': ?labeledRunners,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'labeled_runners'}.contains(key)); } 
CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions copyWith({bool? Function()? labeledRunners}) { return CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions(
  labeledRunners: labeledRunners != null ? labeledRunners() : this.labeledRunners,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions &&
          labeledRunners == other.labeledRunners; } 
@override int get hashCode { return labeledRunners.hashCode; } 
@override String toString() { return 'CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions(labeledRunners: $labeledRunners)'; } 
 }
