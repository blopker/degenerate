// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesCartesBancairesPayments {const PostAccountsAccountRequestCapabilitiesCartesBancairesPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesCartesBancairesPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesCartesBancairesPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesCartesBancairesPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesCartesBancairesPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesCartesBancairesPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesCartesBancairesPayments(requested: $requested)'; } 
 }
