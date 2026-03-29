// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateTokenRequest {const CreateTokenRequest({this.ttl});

factory CreateTokenRequest.fromJson(Map<String, dynamic> json) { return CreateTokenRequest(
  ttl: json['Ttl'] != null ? (json['Ttl'] as num).toInt() : null,
); }

/// The duration in seconds for which the generated credentials are valid. The default value is 86400 (24 hours).
final int? ttl;

Map<String, dynamic> toJson() { return {
  'Ttl': ?ttl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'Ttl'}.contains(key)); } 
CreateTokenRequest copyWith({int Function()? ttl}) { return CreateTokenRequest(
  ttl: ttl != null ? ttl() : this.ttl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateTokenRequest &&
          ttl == other.ttl; } 
@override int get hashCode { return ttl.hashCode; } 
@override String toString() { return 'CreateTokenRequest(ttl: $ttl)'; } 
 }
