// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSourcesRequestMandateAcceptanceOffline {const PostSourcesRequestMandateAcceptanceOffline({required this.contactEmail});

factory PostSourcesRequestMandateAcceptanceOffline.fromJson(Map<String, dynamic> json) { return PostSourcesRequestMandateAcceptanceOffline(
  contactEmail: json['contact_email'] as String,
); }

final String contactEmail;

Map<String, dynamic> toJson() { return {
  'contact_email': contactEmail,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('contact_email') && json['contact_email'] is String; } 
PostSourcesRequestMandateAcceptanceOffline copyWith({String? contactEmail}) { return PostSourcesRequestMandateAcceptanceOffline(
  contactEmail: contactEmail ?? this.contactEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSourcesRequestMandateAcceptanceOffline &&
          contactEmail == other.contactEmail; } 
@override int get hashCode { return contactEmail.hashCode; } 
@override String toString() { return 'PostSourcesRequestMandateAcceptanceOffline(contactEmail: $contactEmail)'; } 
 }
