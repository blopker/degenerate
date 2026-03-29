// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesNaverPayPayments {const PostAccountsRequestCapabilitiesNaverPayPayments({this.requested});

factory PostAccountsRequestCapabilitiesNaverPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesNaverPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesNaverPayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesNaverPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesNaverPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesNaverPayPayments(requested: $requested)'; } 
 }
