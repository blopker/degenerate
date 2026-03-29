// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesP24Payments {const PostAccountsRequestCapabilitiesP24Payments({this.requested});

factory PostAccountsRequestCapabilitiesP24Payments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesP24Payments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesP24Payments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesP24Payments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesP24Payments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesP24Payments(requested: $requested)'; } 
 }
