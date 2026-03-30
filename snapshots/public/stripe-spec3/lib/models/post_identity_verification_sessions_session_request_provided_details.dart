// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details provided about the user being verified. These details may be shown to the user.
final class PostIdentityVerificationSessionsSessionRequestProvidedDetails {const PostIdentityVerificationSessionsSessionRequestProvidedDetails({this.email, this.phone, });

factory PostIdentityVerificationSessionsSessionRequestProvidedDetails.fromJson(Map<String, dynamic> json) { return PostIdentityVerificationSessionsSessionRequestProvidedDetails(
  email: json['email'] as String?,
  phone: json['phone'] as String?,
); }

final String? email;

final String? phone;

Map<String, dynamic> toJson() { return {
  'email': ?email,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'phone'}.contains(key)); } 
PostIdentityVerificationSessionsSessionRequestProvidedDetails copyWith({String Function()? email, String Function()? phone, }) { return PostIdentityVerificationSessionsSessionRequestProvidedDetails(
  email: email != null ? email() : this.email,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIdentityVerificationSessionsSessionRequestProvidedDetails &&
          email == other.email &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(email, phone); } 
@override String toString() { return 'PostIdentityVerificationSessionsSessionRequestProvidedDetails(email: $email, phone: $phone)'; } 
 }
