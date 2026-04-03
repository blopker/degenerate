// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpNewDataset {const DlpNewDataset({required this.name, this.caseSensitive, this.description, this.encodingVersion, this.secret, });

factory DlpNewDataset.fromJson(Map<String, dynamic> json) { return DlpNewDataset(
  caseSensitive: json['case_sensitive'] as bool?,
  description: json['description'] as String?,
  encodingVersion: json['encoding_version'] != null ? (json['encoding_version'] as num).toInt() : null,
  name: json['name'] as String,
  secret: json['secret'] as bool?,
); }

/// Only applies to custom word lists.
/// Determines if the words should be matched in a case-sensitive manner
/// Cannot be set to false if `secret` is true or undefined
final bool? caseSensitive;

/// The description of the dataset.
final String? description;

/// Dataset encoding version
/// 
/// Non-secret custom word lists with no header are always version 1.
/// Secret EDM lists with no header are version 1.
/// Multicolumn CSV with headers are version 2.
/// Omitting this field provides the default value 0, which is interpreted
/// the same as 1.
final int? encodingVersion;

final String name;

/// Generate a secret dataset.
/// 
/// If true, the response will include a secret to use with the EDM encoder.
/// If false, the response has no secret and the dataset is uploaded in plaintext.
final bool? secret;

Map<String, dynamic> toJson() { return {
  'case_sensitive': ?caseSensitive,
  'description': ?description,
  'encoding_version': ?encodingVersion,
  'name': name,
  'secret': ?secret,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
DlpNewDataset copyWith({bool Function()? caseSensitive, String? Function()? description, int Function()? encodingVersion, String? name, bool Function()? secret, }) { return DlpNewDataset(
  caseSensitive: caseSensitive != null ? caseSensitive() : this.caseSensitive,
  description: description != null ? description() : this.description,
  encodingVersion: encodingVersion != null ? encodingVersion() : this.encodingVersion,
  name: name ?? this.name,
  secret: secret != null ? secret() : this.secret,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpNewDataset &&
          caseSensitive == other.caseSensitive &&
          description == other.description &&
          encodingVersion == other.encodingVersion &&
          name == other.name &&
          secret == other.secret; } 
@override int get hashCode { return Object.hash(caseSensitive, description, encodingVersion, name, secret); } 
@override String toString() { return 'DlpNewDataset(caseSensitive: $caseSensitive, description: $description, encodingVersion: $encodingVersion, name: $name, secret: $secret)'; } 
 }
