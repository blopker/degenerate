// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments {const PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesAfterpayClearpayPayments(requested: $requested)'; } 
 }
