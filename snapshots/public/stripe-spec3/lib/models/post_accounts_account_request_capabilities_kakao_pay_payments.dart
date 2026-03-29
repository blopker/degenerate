// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesKakaoPayPayments {const PostAccountsAccountRequestCapabilitiesKakaoPayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesKakaoPayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesKakaoPayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesKakaoPayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesKakaoPayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesKakaoPayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesKakaoPayPayments(requested: $requested)'; } 
 }
