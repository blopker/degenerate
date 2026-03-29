// GENERATED CODE - DO NOT MODIFY BY HAND

/// Feature options for Automatic dependency submission
final class CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions {const CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions({this.labeledRunners});

factory CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions(
  labeledRunners: json['labeled_runners'] as bool?,
); }

/// Whether to use runners labeled with 'dependency-submission' or standard GitHub runners.
final bool? labeledRunners;

Map<String, dynamic> toJson() { return {
  'labeled_runners': ?labeledRunners,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'labeled_runners'}.contains(key)); } 
CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions copyWith({bool Function()? labeledRunners}) { return CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions(
  labeledRunners: labeledRunners != null ? labeledRunners() : this.labeledRunners,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions &&
          labeledRunners == other.labeledRunners; } 
@override int get hashCode { return labeledRunners.hashCode; } 
@override String toString() { return 'CodeSecurityConfigurationDependencyGraphAutosubmitActionOptions(labeledRunners: $labeledRunners)'; } 
 }
