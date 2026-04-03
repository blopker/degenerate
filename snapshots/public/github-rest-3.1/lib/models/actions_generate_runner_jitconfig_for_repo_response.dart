// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'runner.dart';@immutable final class ActionsGenerateRunnerJitconfigForRepoResponse {const ActionsGenerateRunnerJitconfigForRepoResponse({required this.runner, required this.encodedJitConfig, });

factory ActionsGenerateRunnerJitconfigForRepoResponse.fromJson(Map<String, dynamic> json) { return ActionsGenerateRunnerJitconfigForRepoResponse(
  runner: Runner.fromJson(json['runner'] as Map<String, dynamic>),
  encodedJitConfig: json['encoded_jit_config'] as String,
); }

final Runner runner;

/// The base64 encoded runner configuration.
final String encodedJitConfig;

Map<String, dynamic> toJson() { return {
  'runner': runner.toJson(),
  'encoded_jit_config': encodedJitConfig,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('runner') &&
      json.containsKey('encoded_jit_config') && json['encoded_jit_config'] is String; } 
ActionsGenerateRunnerJitconfigForRepoResponse copyWith({Runner? runner, String? encodedJitConfig, }) { return ActionsGenerateRunnerJitconfigForRepoResponse(
  runner: runner ?? this.runner,
  encodedJitConfig: encodedJitConfig ?? this.encodedJitConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsGenerateRunnerJitconfigForRepoResponse &&
          runner == other.runner &&
          encodedJitConfig == other.encodedJitConfig; } 
@override int get hashCode { return Object.hash(runner, encodedJitConfig); } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForRepoResponse(runner: $runner, encodedJitConfig: $encodedJitConfig)'; } 
 }
