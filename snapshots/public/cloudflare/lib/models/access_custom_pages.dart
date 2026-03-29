// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessCustomPages {const AccessCustomPages({this.forbidden, this.identityDenied, });

factory AccessCustomPages.fromJson(Map<String, dynamic> json) { return AccessCustomPages(
  forbidden: json['forbidden'] as String?,
  identityDenied: json['identity_denied'] as String?,
); }

/// The uid of the custom page to use when a user is denied access after failing a non-identity rule.
final String? forbidden;

/// The uid of the custom page to use when a user is denied access.
final String? identityDenied;

Map<String, dynamic> toJson() { return {
  'forbidden': ?forbidden,
  'identity_denied': ?identityDenied,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessCustomPages copyWith({String Function()? forbidden, String Function()? identityDenied, }) { return AccessCustomPages(
  forbidden: forbidden != null ? forbidden() : this.forbidden,
  identityDenied: identityDenied != null ? identityDenied() : this.identityDenied,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCustomPages &&
          forbidden == other.forbidden &&
          identityDenied == other.identityDenied; } 
@override int get hashCode { return Object.hash(forbidden, identityDenied); } 
@override String toString() { return 'AccessCustomPages(forbidden: $forbidden, identityDenied: $identityDenied)'; } 
 }
