// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_content_list_entry_content.dart';import 'web3_content_list_entry_description.dart';import 'web3_content_list_entry_type.dart';import 'web3_identifier.dart';import 'web3_timestamp.dart';/// Specify a content list entry to block.
final class Web3ContentListEntry {const Web3ContentListEntry({this.content, this.createdOn, this.description, this.id, this.modifiedOn, this.type, });

factory Web3ContentListEntry.fromJson(Map<String, dynamic> json) { return Web3ContentListEntry(
  content: json['content'] != null ? Web3ContentListEntryContent.fromJson(json['content'] as String) : null,
  createdOn: json['created_on'] != null ? Web3Timestamp.fromJson(json['created_on'] as String) : null,
  description: json['description'] != null ? Web3ContentListEntryDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? Web3Identifier.fromJson(json['id'] as String) : null,
  modifiedOn: json['modified_on'] != null ? Web3Timestamp.fromJson(json['modified_on'] as String) : null,
  type: json['type'] != null ? Web3ContentListEntryType.fromJson(json['type'] as String) : null,
); }

final Web3ContentListEntryContent? content;

final Web3Timestamp? createdOn;

final Web3ContentListEntryDescription? description;

final Web3Identifier? id;

final Web3Timestamp? modifiedOn;

final Web3ContentListEntryType? type;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content', 'created_on', 'description', 'id', 'modified_on', 'type'}.contains(key)); } 
Web3ContentListEntry copyWith({Web3ContentListEntryContent Function()? content, Web3Timestamp Function()? createdOn, Web3ContentListEntryDescription Function()? description, Web3Identifier Function()? id, Web3Timestamp Function()? modifiedOn, Web3ContentListEntryType Function()? type, }) { return Web3ContentListEntry(
  content: content != null ? content() : this.content,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListEntry &&
          content == other.content &&
          createdOn == other.createdOn &&
          description == other.description &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          type == other.type; } 
@override int get hashCode { return Object.hash(content, createdOn, description, id, modifiedOn, type); } 
@override String toString() { return 'Web3ContentListEntry(content: $content, createdOn: $createdOn, description: $description, id: $id, modifiedOn: $modifiedOn, type: $type)'; } 
 }
