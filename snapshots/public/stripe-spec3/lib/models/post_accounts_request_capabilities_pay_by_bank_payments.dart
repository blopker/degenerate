// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesPayByBankPayments {const PostAccountsRequestCapabilitiesPayByBankPayments({this.requested});

factory PostAccountsRequestCapabilitiesPayByBankPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesPayByBankPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesPayByBankPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesPayByBankPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesPayByBankPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesPayByBankPayments(requested: $requested)'; } 
 }
