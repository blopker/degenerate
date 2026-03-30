// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_post_commands_response_commands.dart';final class DigitalExperienceMonitoringPostCommandsResponse {const DigitalExperienceMonitoringPostCommandsResponse({this.commands});

factory DigitalExperienceMonitoringPostCommandsResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringPostCommandsResponse(
  commands: (json['commands'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringPostCommandsResponseCommands.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// List of created commands
final List<DigitalExperienceMonitoringPostCommandsResponseCommands>? commands;

Map<String, dynamic> toJson() { return {
  if (commands != null) 'commands': commands?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commands'}.contains(key)); } 
DigitalExperienceMonitoringPostCommandsResponse copyWith({List<DigitalExperienceMonitoringPostCommandsResponseCommands> Function()? commands}) { return DigitalExperienceMonitoringPostCommandsResponse(
  commands: commands != null ? commands() : this.commands,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringPostCommandsResponse &&
          listEquals(commands, other.commands); } 
@override int get hashCode { return Object.hashAll(commands ?? const []).hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringPostCommandsResponse(commands: $commands)'; } 
 }
