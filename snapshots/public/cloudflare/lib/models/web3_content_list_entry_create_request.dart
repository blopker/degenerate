// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_content_list_entry_content.dart';import 'web3_content_list_entry_description.dart';import 'web3_content_list_entry_type.dart';final class Web3ContentListEntryCreateRequest {const Web3ContentListEntryCreateRequest({required this.content, this.description, required this.type, });

factory Web3ContentListEntryCreateRequest.fromJson(Map<String, dynamic> json) { return Web3ContentListEntryCreateRequest(
  content: Web3ContentListEntryContent.fromJson(json['content'] as String),
  description: json['description'] != null ? Web3ContentListEntryDescription.fromJson(json['description'] as String) : null,
  type: Web3ContentListEntryType.fromJson(json['type'] as String),
); }

/// Specify the CID or content path of content to block.
final Web3ContentListEntryContent content;

final Web3ContentListEntryDescription? description;

final Web3ContentListEntryType type;

Map<String, dynamic> toJson() { return {
  'content': content.toJson(),
  if (description != null) 'description': description?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('type'); } 
Web3ContentListEntryCreateRequest copyWith({Web3ContentListEntryContent? content, Web3ContentListEntryDescription Function()? description, Web3ContentListEntryType? type, }) { return Web3ContentListEntryCreateRequest(
  content: content ?? this.content,
  description: description != null ? description() : this.description,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListEntryCreateRequest &&
          content == other.content &&
          description == other.description &&
          type == other.type; } 
@override int get hashCode { return Object.hash(content, description, type); } 
@override String toString() { return 'Web3ContentListEntryCreateRequest(content: $content, description: $description, type: $type)'; } 
 }
