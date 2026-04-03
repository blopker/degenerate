// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesSamsungPayPayments {const PostAccountsAccountRequestCapabilitiesSamsungPayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesSamsungPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesSamsungPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesSamsungPayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesSamsungPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesSamsungPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesSamsungPayPayments(requested: $requested)'; } 
 }
