// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesRevolutPayPayments {const PostAccountsRequestCapabilitiesRevolutPayPayments({this.requested});

factory PostAccountsRequestCapabilitiesRevolutPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesRevolutPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesRevolutPayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesRevolutPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesRevolutPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesRevolutPayPayments(requested: $requested)'; } 
 }
