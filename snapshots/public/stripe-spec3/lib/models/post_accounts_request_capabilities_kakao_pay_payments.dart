// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesKakaoPayPayments {const PostAccountsRequestCapabilitiesKakaoPayPayments({this.requested});

factory PostAccountsRequestCapabilitiesKakaoPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesKakaoPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesKakaoPayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesKakaoPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesKakaoPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesKakaoPayPayments(requested: $requested)'; } 
 }
