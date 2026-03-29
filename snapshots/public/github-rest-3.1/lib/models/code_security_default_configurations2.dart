// GENERATED CODE - DO NOT MODIFY BY HAND

import 'code_security_configuration.dart';final class CodeSecurityDefaultConfigurations2 {const CodeSecurityDefaultConfigurations2({this.defaultForNewRepos, this.configuration, });

factory CodeSecurityDefaultConfigurations2.fromJson(Map<String, dynamic> json) { return CodeSecurityDefaultConfigurations2(
  defaultForNewRepos: json['default_for_new_repos'],
  configuration: json['configuration'] != null ? CodeSecurityConfiguration.fromJson(json['configuration'] as Map<String, dynamic>) : null,
); }

/// The visibility of newly created repositories for which the code security configuration will be applied to by default
final dynamic defaultForNewRepos;

final CodeSecurityConfiguration? configuration;

Map<String, dynamic> toJson() { return {
  'default_for_new_repos': ?defaultForNewRepos,
  if (configuration != null) 'configuration': configuration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CodeSecurityDefaultConfigurations2 copyWith({dynamic Function()? defaultForNewRepos, CodeSecurityConfiguration Function()? configuration, }) { return CodeSecurityDefaultConfigurations2(
  defaultForNewRepos: defaultForNewRepos != null ? defaultForNewRepos() : this.defaultForNewRepos,
  configuration: configuration != null ? configuration() : this.configuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityDefaultConfigurations2 &&
          defaultForNewRepos == other.defaultForNewRepos &&
          configuration == other.configuration; } 
@override int get hashCode { return Object.hash(defaultForNewRepos, configuration); } 
@override String toString() { return 'CodeSecurityDefaultConfigurations2(defaultForNewRepos: $defaultForNewRepos, configuration: $configuration)'; } 
 }
