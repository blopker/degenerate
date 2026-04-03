// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesBacsDebitPayments {const PostAccountsRequestCapabilitiesBacsDebitPayments({this.requested});

factory PostAccountsRequestCapabilitiesBacsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesBacsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesBacsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesBacsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesBacsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesBacsDebitPayments(requested: $requested)'; } 
 }
