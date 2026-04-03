// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TenantTenantContacts {const TenantTenantContacts({this.email, this.website, });

factory TenantTenantContacts.fromJson(Map<String, dynamic> json) { return TenantTenantContacts(
  email: json['email'] as String?,
  website: json['website'] as String?,
); }

final String? email;

final String? website;

Map<String, dynamic> toJson() { return {
  'email': ?email,
  'website': ?website,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'website'}.contains(key)); } 
TenantTenantContacts copyWith({String Function()? email, String Function()? website, }) { return TenantTenantContacts(
  email: email != null ? email() : this.email,
  website: website != null ? website() : this.website,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TenantTenantContacts &&
          email == other.email &&
          website == other.website; } 
@override int get hashCode { return Object.hash(email, website); } 
@override String toString() { return 'TenantTenantContacts(email: $email, website: $website)'; } 
 }
