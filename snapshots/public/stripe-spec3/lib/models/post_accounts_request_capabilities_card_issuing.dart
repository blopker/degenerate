// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesCardIssuing {const PostAccountsRequestCapabilitiesCardIssuing({this.requested});

factory PostAccountsRequestCapabilitiesCardIssuing.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesCardIssuing(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesCardIssuing copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesCardIssuing(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesCardIssuing &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesCardIssuing(requested: $requested)'; } 
 }
