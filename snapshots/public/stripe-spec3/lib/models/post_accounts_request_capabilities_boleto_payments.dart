// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesBoletoPayments {const PostAccountsRequestCapabilitiesBoletoPayments({this.requested});

factory PostAccountsRequestCapabilitiesBoletoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesBoletoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesBoletoPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesBoletoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesBoletoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesBoletoPayments(requested: $requested)'; } 
 }
