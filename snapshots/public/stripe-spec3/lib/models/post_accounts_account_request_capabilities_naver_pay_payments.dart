// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesNaverPayPayments {const PostAccountsAccountRequestCapabilitiesNaverPayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesNaverPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesNaverPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesNaverPayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesNaverPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesNaverPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesNaverPayPayments(requested: $requested)'; } 
 }
