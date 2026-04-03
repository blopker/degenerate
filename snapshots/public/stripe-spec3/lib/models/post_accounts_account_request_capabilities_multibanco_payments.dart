// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesMultibancoPayments {const PostAccountsAccountRequestCapabilitiesMultibancoPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesMultibancoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesMultibancoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesMultibancoPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesMultibancoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesMultibancoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesMultibancoPayments(requested: $requested)'; } 
 }
