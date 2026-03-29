// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_comment.dart';import 'secrets_store_secret_name.dart';final class SecretsStoreDuplicateSecretObject {const SecretsStoreDuplicateSecretObject({this.comment, required this.name, required this.scopes, });

factory SecretsStoreDuplicateSecretObject.fromJson(Map<String, dynamic> json) { return SecretsStoreDuplicateSecretObject(
  comment: json['comment'] != null ? SecretsStoreComment.fromJson(json['comment'] as String) : null,
  name: SecretsStoreSecretName.fromJson(json['name'] as String),
  scopes: (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Freeform text describing the secret
final SecretsStoreComment? comment;

final SecretsStoreSecretName name;

final List<String> scopes;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  'name': name.toJson(),
  'scopes': scopes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('scopes'); } 
SecretsStoreDuplicateSecretObject copyWith({SecretsStoreComment Function()? comment, SecretsStoreSecretName? name, List<String>? scopes, }) { return SecretsStoreDuplicateSecretObject(
  comment: comment != null ? comment() : this.comment,
  name: name ?? this.name,
  scopes: scopes ?? this.scopes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreDuplicateSecretObject &&
          comment == other.comment &&
          name == other.name &&
          listEquals(scopes, other.scopes); } 
@override int get hashCode { return Object.hash(comment, name, Object.hashAll(scopes)); } 
@override String toString() { return 'SecretsStoreDuplicateSecretObject(comment: $comment, name: $name, scopes: $scopes)'; } 
 }
