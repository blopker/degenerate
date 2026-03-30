// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesAfterpayClearpayPayments {const PostAccountsRequestCapabilitiesAfterpayClearpayPayments({this.requested});

factory PostAccountsRequestCapabilitiesAfterpayClearpayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesAfterpayClearpayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesAfterpayClearpayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesAfterpayClearpayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesAfterpayClearpayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesAfterpayClearpayPayments(requested: $requested)'; } 
 }
