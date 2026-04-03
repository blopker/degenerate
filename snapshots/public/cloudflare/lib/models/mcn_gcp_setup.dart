// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class McnGcpSetup {const McnGcpSetup({required this.integrationIdentityTag, required this.itemType, required this.tagCliCommand, });

factory McnGcpSetup.fromJson(Map<String, dynamic> json) { return McnGcpSetup(
  integrationIdentityTag: json['integration_identity_tag'] as String,
  itemType: json['item_type'] as String,
  tagCliCommand: json['tag_cli_command'] as String,
); }

final String integrationIdentityTag;

final String itemType;

final String tagCliCommand;

Map<String, dynamic> toJson() { return {
  'integration_identity_tag': integrationIdentityTag,
  'item_type': itemType,
  'tag_cli_command': tagCliCommand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('integration_identity_tag') && json['integration_identity_tag'] is String &&
      json.containsKey('item_type') && json['item_type'] is String &&
      json.containsKey('tag_cli_command') && json['tag_cli_command'] is String; } 
McnGcpSetup copyWith({String? integrationIdentityTag, String? itemType, String? tagCliCommand, }) { return McnGcpSetup(
  integrationIdentityTag: integrationIdentityTag ?? this.integrationIdentityTag,
  itemType: itemType ?? this.itemType,
  tagCliCommand: tagCliCommand ?? this.tagCliCommand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnGcpSetup &&
          integrationIdentityTag == other.integrationIdentityTag &&
          itemType == other.itemType &&
          tagCliCommand == other.tagCliCommand; } 
@override int get hashCode { return Object.hash(integrationIdentityTag, itemType, tagCliCommand); } 
@override String toString() { return 'McnGcpSetup(integrationIdentityTag: $integrationIdentityTag, itemType: $itemType, tagCliCommand: $tagCliCommand)'; } 
 }
