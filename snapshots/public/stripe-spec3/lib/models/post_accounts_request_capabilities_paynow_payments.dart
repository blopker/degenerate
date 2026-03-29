// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesPaynowPayments {const PostAccountsRequestCapabilitiesPaynowPayments({this.requested});

factory PostAccountsRequestCapabilitiesPaynowPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesPaynowPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesPaynowPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesPaynowPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesPaynowPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesPaynowPayments(requested: $requested)'; } 
 }
