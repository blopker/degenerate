// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposCreateAttestationResponse {const ReposCreateAttestationResponse({this.id});

factory ReposCreateAttestationResponse.fromJson(Map<String, dynamic> json) { return ReposCreateAttestationResponse(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
); }

/// The ID of the attestation.
final int? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
ReposCreateAttestationResponse copyWith({int Function()? id}) { return ReposCreateAttestationResponse(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateAttestationResponse &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ReposCreateAttestationResponse(id: $id)'; } 
 }
