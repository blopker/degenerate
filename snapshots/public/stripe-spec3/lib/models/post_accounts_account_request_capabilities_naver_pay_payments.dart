// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesNaverPayPayments {const PostAccountsAccountRequestCapabilitiesNaverPayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesNaverPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesNaverPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesNaverPayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesNaverPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesNaverPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesNaverPayPayments(requested: $requested)'; } 
 }
