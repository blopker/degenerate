// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesPixPayments {const PostAccountsRequestCapabilitiesPixPayments({this.requested});

factory PostAccountsRequestCapabilitiesPixPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesPixPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesPixPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesPixPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesPixPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesPixPayments(requested: $requested)'; } 
 }
