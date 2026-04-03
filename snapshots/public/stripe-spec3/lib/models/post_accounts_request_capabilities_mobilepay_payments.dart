// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesMobilepayPayments {const PostAccountsRequestCapabilitiesMobilepayPayments({this.requested});

factory PostAccountsRequestCapabilitiesMobilepayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesMobilepayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesMobilepayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesMobilepayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesMobilepayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesMobilepayPayments(requested: $requested)'; } 
 }
