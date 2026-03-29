// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSourcesSourceRequestMandateAcceptanceOffline {const PostSourcesSourceRequestMandateAcceptanceOffline({required this.contactEmail});

factory PostSourcesSourceRequestMandateAcceptanceOffline.fromJson(Map<String, dynamic> json) { return PostSourcesSourceRequestMandateAcceptanceOffline(
  contactEmail: json['contact_email'] as String,
); }

final String contactEmail;

Map<String, dynamic> toJson() { return {
  'contact_email': contactEmail,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('contact_email') && json['contact_email'] is String; } 
PostSourcesSourceRequestMandateAcceptanceOffline copyWith({String? contactEmail}) { return PostSourcesSourceRequestMandateAcceptanceOffline(
  contactEmail: contactEmail ?? this.contactEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSourcesSourceRequestMandateAcceptanceOffline &&
          contactEmail == other.contactEmail; } 
@override int get hashCode { return contactEmail.hashCode; } 
@override String toString() { return 'PostSourcesSourceRequestMandateAcceptanceOffline(contactEmail: $contactEmail)'; } 
 }
