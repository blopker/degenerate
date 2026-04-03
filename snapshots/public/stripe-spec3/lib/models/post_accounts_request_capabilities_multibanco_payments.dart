// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesMultibancoPayments {const PostAccountsRequestCapabilitiesMultibancoPayments({this.requested});

factory PostAccountsRequestCapabilitiesMultibancoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesMultibancoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesMultibancoPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesMultibancoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesMultibancoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesMultibancoPayments(requested: $requested)'; } 
 }
