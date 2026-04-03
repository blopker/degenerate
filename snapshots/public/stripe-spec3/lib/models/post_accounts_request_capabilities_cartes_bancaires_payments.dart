// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesCartesBancairesPayments {const PostAccountsRequestCapabilitiesCartesBancairesPayments({this.requested});

factory PostAccountsRequestCapabilitiesCartesBancairesPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesCartesBancairesPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesCartesBancairesPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesCartesBancairesPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesCartesBancairesPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesCartesBancairesPayments(requested: $requested)'; } 
 }
