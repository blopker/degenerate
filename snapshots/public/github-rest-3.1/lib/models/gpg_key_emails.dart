// GENERATED CODE - DO NOT MODIFY BY HAND

final class GpgKeyEmails {const GpgKeyEmails({this.email, this.verified, });

factory GpgKeyEmails.fromJson(Map<String, dynamic> json) { return GpgKeyEmails(
  email: json['email'] as String?,
  verified: json['verified'] as bool?,
); }

final String? email;

final bool? verified;

Map<String, dynamic> toJson() { return {
  'email': ?email,
  'verified': ?verified,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GpgKeyEmails copyWith({String Function()? email, bool Function()? verified, }) { return GpgKeyEmails(
  email: email != null ? email() : this.email,
  verified: verified != null ? verified() : this.verified,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GpgKeyEmails &&
          email == other.email &&
          verified == other.verified; } 
@override int get hashCode { return Object.hash(email, verified); } 
@override String toString() { return 'GpgKeyEmails(email: $email, verified: $verified)'; } 
 }
