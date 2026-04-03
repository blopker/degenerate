// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesGiropayPayments {const PostAccountsAccountRequestCapabilitiesGiropayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesGiropayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesGiropayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesGiropayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesGiropayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesGiropayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesGiropayPayments(requested: $requested)'; } 
 }
