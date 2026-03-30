// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_id.dart';final class RateLimitsForAZoneDeleteARateLimitResponseResult {const RateLimitsForAZoneDeleteARateLimitResponseResult({this.id});

factory RateLimitsForAZoneDeleteARateLimitResponseResult.fromJson(Map<String, dynamic> json) { return RateLimitsForAZoneDeleteARateLimitResponseResult(
  id: json['id'] != null ? FirewallId.fromJson(json['id'] as String) : null,
); }

/// The unique identifier of the rate limit.
final FirewallId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
RateLimitsForAZoneDeleteARateLimitResponseResult copyWith({FirewallId Function()? id}) { return RateLimitsForAZoneDeleteARateLimitResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RateLimitsForAZoneDeleteARateLimitResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'RateLimitsForAZoneDeleteARateLimitResponseResult(id: $id)'; } 
 }
