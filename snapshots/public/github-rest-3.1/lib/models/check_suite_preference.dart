// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'check_suite_preference_preferences.dart';import 'minimal_repository.dart';/// Check suite configuration preferences for a repository.
@immutable final class CheckSuitePreference {const CheckSuitePreference({required this.preferences, required this.repository, });

factory CheckSuitePreference.fromJson(Map<String, dynamic> json) { return CheckSuitePreference(
  preferences: CheckSuitePreferencePreferences.fromJson(json['preferences'] as Map<String, dynamic>),
  repository: MinimalRepository.fromJson(json['repository'] as Map<String, dynamic>),
); }

final CheckSuitePreferencePreferences preferences;

final MinimalRepository repository;

Map<String, dynamic> toJson() { return {
  'preferences': preferences.toJson(),
  'repository': repository.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('preferences') &&
      json.containsKey('repository'); } 
CheckSuitePreference copyWith({CheckSuitePreferencePreferences? preferences, MinimalRepository? repository, }) { return CheckSuitePreference(
  preferences: preferences ?? this.preferences,
  repository: repository ?? this.repository,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckSuitePreference &&
          preferences == other.preferences &&
          repository == other.repository; } 
@override int get hashCode { return Object.hash(preferences, repository); } 
@override String toString() { return 'CheckSuitePreference(preferences: $preferences, repository: $repository)'; } 
 }
