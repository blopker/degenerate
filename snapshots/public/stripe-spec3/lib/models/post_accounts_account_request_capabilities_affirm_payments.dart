// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesAffirmPayments {const PostAccountsAccountRequestCapabilitiesAffirmPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesAffirmPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesAffirmPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesAffirmPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesAffirmPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesAffirmPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesAffirmPayments(requested: $requested)'; } 
 }
