// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_comment.dart';@immutable final class SecretsStorePatchSecretObject {const SecretsStorePatchSecretObject({this.comment, this.scopes, });

factory SecretsStorePatchSecretObject.fromJson(Map<String, dynamic> json) { return SecretsStorePatchSecretObject(
  comment: json['comment'] != null ? SecretsStoreComment.fromJson(json['comment'] as String) : null,
  scopes: (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Freeform text describing the secret
final SecretsStoreComment? comment;

final List<String>? scopes;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  'scopes': ?scopes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'scopes'}.contains(key)); } 
SecretsStorePatchSecretObject copyWith({SecretsStoreComment Function()? comment, List<String> Function()? scopes, }) { return SecretsStorePatchSecretObject(
  comment: comment != null ? comment() : this.comment,
  scopes: scopes != null ? scopes() : this.scopes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStorePatchSecretObject &&
          comment == other.comment &&
          listEquals(scopes, other.scopes); } 
@override int get hashCode { return Object.hash(comment, Object.hashAll(scopes ?? const [])); } 
@override String toString() { return 'SecretsStorePatchSecretObject(comment: $comment, scopes: $scopes)'; } 
 }
