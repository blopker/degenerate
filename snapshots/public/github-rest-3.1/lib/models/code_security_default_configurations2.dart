// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_configuration.dart';@immutable final class CodeSecurityDefaultConfigurations2 {const CodeSecurityDefaultConfigurations2({this.defaultForNewRepos = const Omittable.absent(), this.configuration, });

factory CodeSecurityDefaultConfigurations2.fromJson(Map<String, dynamic> json) { return CodeSecurityDefaultConfigurations2(
  defaultForNewRepos: json.containsKey('default_for_new_repos') ? Omittable(json['default_for_new_repos']) : const Omittable.absent(),
  configuration: json['configuration'] != null ? CodeSecurityConfiguration.fromJson(json['configuration'] as Map<String, dynamic>) : null,
); }

/// The visibility of newly created repositories for which the code security configuration will be applied to by default
final Omittable<dynamic> defaultForNewRepos;

final CodeSecurityConfiguration? configuration;

Map<String, dynamic> toJson() { return {
  if (defaultForNewRepos.isPresent) 'default_for_new_repos': defaultForNewRepos.value,
  if (configuration != null) 'configuration': configuration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_for_new_repos', 'configuration'}.contains(key)); } 
CodeSecurityDefaultConfigurations2 copyWith({Omittable<dynamic>? defaultForNewRepos, CodeSecurityConfiguration? Function()? configuration, }) { return CodeSecurityDefaultConfigurations2(
  defaultForNewRepos: defaultForNewRepos ?? this.defaultForNewRepos,
  configuration: configuration != null ? configuration() : this.configuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityDefaultConfigurations2 &&
          defaultForNewRepos == other.defaultForNewRepos &&
          configuration == other.configuration; } 
@override int get hashCode { return Object.hash(defaultForNewRepos, configuration); } 
@override String toString() { return 'CodeSecurityDefaultConfigurations2(defaultForNewRepos: $defaultForNewRepos, configuration: $configuration)'; } 
 }
