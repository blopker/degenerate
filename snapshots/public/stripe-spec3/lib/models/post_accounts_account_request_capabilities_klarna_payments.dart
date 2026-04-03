// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesKlarnaPayments {const PostAccountsAccountRequestCapabilitiesKlarnaPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesKlarnaPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesKlarnaPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesKlarnaPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesKlarnaPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesKlarnaPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesKlarnaPayments(requested: $requested)'; } 
 }
