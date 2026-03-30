// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details about the authorization, such as identifiers, set by the card network.
final class PostTestHelpersIssuingAuthorizationsRequestNetworkData {const PostTestHelpersIssuingAuthorizationsRequestNetworkData({this.acquiringInstitutionId});

factory PostTestHelpersIssuingAuthorizationsRequestNetworkData.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestNetworkData(
  acquiringInstitutionId: json['acquiring_institution_id'] as String?,
); }

final String? acquiringInstitutionId;

Map<String, dynamic> toJson() { return {
  'acquiring_institution_id': ?acquiringInstitutionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acquiring_institution_id'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsRequestNetworkData copyWith({String Function()? acquiringInstitutionId}) { return PostTestHelpersIssuingAuthorizationsRequestNetworkData(
  acquiringInstitutionId: acquiringInstitutionId != null ? acquiringInstitutionId() : this.acquiringInstitutionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestNetworkData &&
          acquiringInstitutionId == other.acquiringInstitutionId; } 
@override int get hashCode { return acquiringInstitutionId.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestNetworkData(acquiringInstitutionId: $acquiringInstitutionId)'; } 
 }
