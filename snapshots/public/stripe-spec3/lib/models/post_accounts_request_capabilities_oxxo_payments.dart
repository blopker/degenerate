// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesOxxoPayments {const PostAccountsRequestCapabilitiesOxxoPayments({this.requested});

factory PostAccountsRequestCapabilitiesOxxoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesOxxoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesOxxoPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesOxxoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesOxxoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesOxxoPayments(requested: $requested)'; } 
 }
