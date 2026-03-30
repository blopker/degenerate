// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessFailedLoginResponseResult {const AccessFailedLoginResponseResult({this.expiration, this.metadata, });

factory AccessFailedLoginResponseResult.fromJson(Map<String, dynamic> json) { return AccessFailedLoginResponseResult(
  expiration: json['expiration'] != null ? (json['expiration'] as num).toInt() : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final int? expiration;

final Map<String,dynamic>? metadata;

Map<String, dynamic> toJson() { return {
  'expiration': ?expiration,
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expiration', 'metadata'}.contains(key)); } 
AccessFailedLoginResponseResult copyWith({int Function()? expiration, Map<String, dynamic> Function()? metadata, }) { return AccessFailedLoginResponseResult(
  expiration: expiration != null ? expiration() : this.expiration,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessFailedLoginResponseResult &&
          expiration == other.expiration &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(expiration, metadata); } 
@override String toString() { return 'AccessFailedLoginResponseResult(expiration: $expiration, metadata: $metadata)'; } 
 }
