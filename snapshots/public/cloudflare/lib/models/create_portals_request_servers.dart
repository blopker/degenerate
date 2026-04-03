// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_portals_request_servers_updated_prompts.dart';import 'create_portals_request_servers_updated_tools.dart';@immutable final class CreatePortalsRequestServers {const CreatePortalsRequestServers({required this.serverId, this.defaultDisabled = false, this.onBehalf = true, this.updatedPrompts, this.updatedTools, });

factory CreatePortalsRequestServers.fromJson(Map<String, dynamic> json) { return CreatePortalsRequestServers(
  defaultDisabled: json.containsKey('default_disabled') ? json['default_disabled'] as bool : false,
  onBehalf: json.containsKey('on_behalf') ? json['on_behalf'] as bool : true,
  serverId: json['server_id'] as String,
  updatedPrompts: (json['updated_prompts'] as List<dynamic>?)?.map((e) => CreatePortalsRequestServersUpdatedPrompts.fromJson(e as Map<String, dynamic>)).toList(),
  updatedTools: (json['updated_tools'] as List<dynamic>?)?.map((e) => CreatePortalsRequestServersUpdatedTools.fromJson(e as Map<String, dynamic>)).toList(),
); }

final bool defaultDisabled;

final bool onBehalf;

/// server id
final String serverId;

final List<CreatePortalsRequestServersUpdatedPrompts>? updatedPrompts;

final List<CreatePortalsRequestServersUpdatedTools>? updatedTools;

Map<String, dynamic> toJson() { return {
  'default_disabled': defaultDisabled,
  'on_behalf': onBehalf,
  'server_id': serverId,
  if (updatedPrompts != null) 'updated_prompts': updatedPrompts?.map((e) => e.toJson()).toList(),
  if (updatedTools != null) 'updated_tools': updatedTools?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('server_id') && json['server_id'] is String; } 
CreatePortalsRequestServers copyWith({bool Function()? defaultDisabled, bool Function()? onBehalf, String? serverId, List<CreatePortalsRequestServersUpdatedPrompts> Function()? updatedPrompts, List<CreatePortalsRequestServersUpdatedTools> Function()? updatedTools, }) { return CreatePortalsRequestServers(
  defaultDisabled: defaultDisabled != null ? defaultDisabled() : this.defaultDisabled,
  onBehalf: onBehalf != null ? onBehalf() : this.onBehalf,
  serverId: serverId ?? this.serverId,
  updatedPrompts: updatedPrompts != null ? updatedPrompts() : this.updatedPrompts,
  updatedTools: updatedTools != null ? updatedTools() : this.updatedTools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreatePortalsRequestServers &&
          defaultDisabled == other.defaultDisabled &&
          onBehalf == other.onBehalf &&
          serverId == other.serverId &&
          listEquals(updatedPrompts, other.updatedPrompts) &&
          listEquals(updatedTools, other.updatedTools); } 
@override int get hashCode { return Object.hash(defaultDisabled, onBehalf, serverId, Object.hashAll(updatedPrompts ?? const []), Object.hashAll(updatedTools ?? const [])); } 
@override String toString() { return 'CreatePortalsRequestServers(defaultDisabled: $defaultDisabled, onBehalf: $onBehalf, serverId: $serverId, updatedPrompts: $updatedPrompts, updatedTools: $updatedTools)'; } 
 }
