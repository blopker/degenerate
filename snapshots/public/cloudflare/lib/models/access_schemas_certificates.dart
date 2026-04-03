// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasCertificates {const AccessSchemasCertificates({this.id, this.publicKey, });

factory AccessSchemasCertificates.fromJson(Map<String, dynamic> json) { return AccessSchemasCertificates(
  id: json['id'] as String?,
  publicKey: json['public_key'] as String?,
); }

/// The key ID of this certificate.
final String? id;

/// The public key of this certificate.
final String? publicKey;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'public_key': ?publicKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'public_key'}.contains(key)); } 
AccessSchemasCertificates copyWith({String Function()? id, String Function()? publicKey, }) { return AccessSchemasCertificates(
  id: id != null ? id() : this.id,
  publicKey: publicKey != null ? publicKey() : this.publicKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasCertificates &&
          id == other.id &&
          publicKey == other.publicKey; } 
@override int get hashCode { return Object.hash(id, publicKey); } 
@override String toString() { return 'AccessSchemasCertificates(id: $id, publicKey: $publicKey)'; } 
 }
