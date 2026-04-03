// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesAlmaPayments {const PostAccountsAccountRequestCapabilitiesAlmaPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesAlmaPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesAlmaPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesAlmaPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesAlmaPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesAlmaPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesAlmaPayments(requested: $requested)'; } 
 }
