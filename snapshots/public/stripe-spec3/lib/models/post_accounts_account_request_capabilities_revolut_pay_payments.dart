// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesRevolutPayPayments {const PostAccountsAccountRequestCapabilitiesRevolutPayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesRevolutPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesRevolutPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesRevolutPayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesRevolutPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesRevolutPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesRevolutPayPayments(requested: $requested)'; } 
 }
