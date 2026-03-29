// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesMobilepayPayments {const PostAccountsAccountRequestCapabilitiesMobilepayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesMobilepayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesMobilepayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCapabilitiesMobilepayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesMobilepayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesMobilepayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesMobilepayPayments(requested: $requested)'; } 
 }
