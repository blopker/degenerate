// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AccessCustomClaimsSupport {const AccessCustomClaimsSupport({this.claims, this.emailClaimName, });

factory AccessCustomClaimsSupport.fromJson(Map<String, dynamic> json) { return AccessCustomClaimsSupport(
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailClaimName: json['email_claim_name'] as String?,
); }

/// Custom claims
final List<String>? claims;

/// The claim name for email in the id_token response.
final String? emailClaimName;

Map<String, dynamic> toJson() { return {
  'claims': ?claims,
  'email_claim_name': ?emailClaimName,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessCustomClaimsSupport copyWith({List<String> Function()? claims, String Function()? emailClaimName, }) { return AccessCustomClaimsSupport(
  claims: claims != null ? claims() : this.claims,
  emailClaimName: emailClaimName != null ? emailClaimName() : this.emailClaimName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCustomClaimsSupport &&
          listEquals(claims, other.claims) &&
          emailClaimName == other.emailClaimName; } 
@override int get hashCode { return Object.hash(Object.hashAll(claims ?? const []), emailClaimName); } 
@override String toString() { return 'AccessCustomClaimsSupport(claims: $claims, emailClaimName: $emailClaimName)'; } 
 }
