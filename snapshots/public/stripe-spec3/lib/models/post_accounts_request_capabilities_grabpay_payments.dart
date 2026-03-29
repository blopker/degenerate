// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesGrabpayPayments {const PostAccountsRequestCapabilitiesGrabpayPayments({this.requested});

factory PostAccountsRequestCapabilitiesGrabpayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesGrabpayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesGrabpayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesGrabpayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesGrabpayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesGrabpayPayments(requested: $requested)'; } 
 }
