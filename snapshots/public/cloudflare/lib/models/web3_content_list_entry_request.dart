// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_content_list_entry_content.dart';import 'web3_content_list_entry_description.dart';import 'web3_content_list_entry_type.dart';/// Specify a content list entry to block.
@immutable final class Web3ContentListEntryRequest {const Web3ContentListEntryRequest({this.content, this.description, this.type, });

factory Web3ContentListEntryRequest.fromJson(Map<String, dynamic> json) { return Web3ContentListEntryRequest(
  content: json['content'] != null ? Web3ContentListEntryContent.fromJson(json['content'] as String) : null,
  description: json['description'] != null ? Web3ContentListEntryDescription.fromJson(json['description'] as String) : null,
  type: json['type'] != null ? Web3ContentListEntryType.fromJson(json['type'] as String) : null,
); }

/// Specify the CID or content path of content to block.
final Web3ContentListEntryContent? content;

/// Specify an optional description of the content list entry.
final Web3ContentListEntryDescription? description;

/// Specify the type of content list entry to block.
final Web3ContentListEntryType? type;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content', 'description', 'type'}.contains(key)); } 
Web3ContentListEntryRequest copyWith({Web3ContentListEntryContent? Function()? content, Web3ContentListEntryDescription? Function()? description, Web3ContentListEntryType? Function()? type, }) { return Web3ContentListEntryRequest(
  content: content != null ? content() : this.content,
  description: description != null ? description() : this.description,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListEntryRequest &&
          content == other.content &&
          description == other.description &&
          type == other.type; } 
@override int get hashCode { return Object.hash(content, description, type); } 
@override String toString() { return 'Web3ContentListEntryRequest(content: $content, description: $description, type: $type)'; } 
 }
