// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DosPrefix {const DosPrefix({required this.comment, required this.createdOn, required this.excluded, required this.id, required this.modifiedOn, required this.prefix, });

factory DosPrefix.fromJson(Map<String, dynamic> json) { return DosPrefix(
  comment: json['comment'] as String,
  createdOn: DateTime.parse(json['created_on'] as String),
  excluded: json['excluded'] as bool,
  id: json['id'] as String,
  modifiedOn: DateTime.parse(json['modified_on'] as String),
  prefix: json['prefix'] as String,
); }

/// A comment describing the prefix.
final String comment;

/// The creation timestamp of the prefix.
final DateTime createdOn;

/// Whether to exclude the prefix from protection.
final bool excluded;

/// The unique ID of the prefix.
final String id;

/// The last modification timestamp of the prefix.
final DateTime modifiedOn;

/// The prefix in CIDR format.
final String prefix;

Map<String, dynamic> toJson() { return {
  'comment': comment,
  'created_on': createdOn.toIso8601String(),
  'excluded': excluded,
  'id': id,
  'modified_on': modifiedOn.toIso8601String(),
  'prefix': prefix,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('comment') && json['comment'] is String &&
      json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('excluded') && json['excluded'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_on') && json['modified_on'] is String &&
      json.containsKey('prefix') && json['prefix'] is String; } 
DosPrefix copyWith({String? comment, DateTime? createdOn, bool? excluded, String? id, DateTime? modifiedOn, String? prefix, }) { return DosPrefix(
  comment: comment ?? this.comment,
  createdOn: createdOn ?? this.createdOn,
  excluded: excluded ?? this.excluded,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  prefix: prefix ?? this.prefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosPrefix &&
          comment == other.comment &&
          createdOn == other.createdOn &&
          excluded == other.excluded &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          prefix == other.prefix; } 
@override int get hashCode { return Object.hash(comment, createdOn, excluded, id, modifiedOn, prefix); } 
@override String toString() { return 'DosPrefix(comment: $comment, createdOn: $createdOn, excluded: $excluded, id: $id, modifiedOn: $modifiedOn, prefix: $prefix)'; } 
 }
