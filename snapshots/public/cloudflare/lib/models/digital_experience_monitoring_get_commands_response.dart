// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_get_commands_response_commands.dart';@immutable final class DigitalExperienceMonitoringGetCommandsResponse {const DigitalExperienceMonitoringGetCommandsResponse({this.commands});

factory DigitalExperienceMonitoringGetCommandsResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringGetCommandsResponse(
  commands: (json['commands'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringGetCommandsResponseCommands.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DigitalExperienceMonitoringGetCommandsResponseCommands>? commands;

Map<String, dynamic> toJson() { return {
  if (commands != null) 'commands': commands?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'commands'}.contains(key)); } 
DigitalExperienceMonitoringGetCommandsResponse copyWith({List<DigitalExperienceMonitoringGetCommandsResponseCommands> Function()? commands}) { return DigitalExperienceMonitoringGetCommandsResponse(
  commands: commands != null ? commands() : this.commands,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringGetCommandsResponse &&
          listEquals(commands, other.commands); } 
@override int get hashCode { return Object.hashAll(commands ?? const []).hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringGetCommandsResponse(commands: $commands)'; } 
 }
