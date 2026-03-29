// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesEpsPayments {const PostAccountsRequestCapabilitiesEpsPayments({this.requested});

factory PostAccountsRequestCapabilitiesEpsPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesEpsPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesEpsPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesEpsPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesEpsPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesEpsPayments(requested: $requested)'; } 
 }
