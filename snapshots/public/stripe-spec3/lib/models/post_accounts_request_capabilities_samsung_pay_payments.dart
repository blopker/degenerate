// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesSamsungPayPayments {const PostAccountsRequestCapabilitiesSamsungPayPayments({this.requested});

factory PostAccountsRequestCapabilitiesSamsungPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesSamsungPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesSamsungPayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesSamsungPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesSamsungPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesSamsungPayPayments(requested: $requested)'; } 
 }
