// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesUsBankAccountAchPayments {const PostAccountsRequestCapabilitiesUsBankAccountAchPayments({this.requested});

factory PostAccountsRequestCapabilitiesUsBankAccountAchPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesUsBankAccountAchPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesUsBankAccountAchPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesUsBankAccountAchPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesUsBankAccountAchPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesUsBankAccountAchPayments(requested: $requested)'; } 
 }
