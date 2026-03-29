// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesGrabpayPayments {const PostAccountsAccountRequestCapabilitiesGrabpayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesGrabpayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesGrabpayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesGrabpayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesGrabpayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesGrabpayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesGrabpayPayments(requested: $requested)'; } 
 }
