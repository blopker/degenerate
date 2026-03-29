// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesAffirmPayments {const PostAccountsRequestCapabilitiesAffirmPayments({this.requested});

factory PostAccountsRequestCapabilitiesAffirmPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesAffirmPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesAffirmPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesAffirmPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesAffirmPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesAffirmPayments(requested: $requested)'; } 
 }
