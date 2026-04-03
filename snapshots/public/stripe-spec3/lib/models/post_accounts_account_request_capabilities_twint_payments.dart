// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesTwintPayments {const PostAccountsAccountRequestCapabilitiesTwintPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesTwintPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesTwintPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesTwintPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesTwintPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesTwintPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesTwintPayments(requested: $requested)'; } 
 }
