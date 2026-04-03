// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesMobilepayPayments {const PostAccountsAccountRequestCapabilitiesMobilepayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesMobilepayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesMobilepayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesMobilepayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesMobilepayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesMobilepayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesMobilepayPayments(requested: $requested)'; } 
 }
