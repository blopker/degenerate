// GENERATED CODE - DO NOT MODIFY BY HAND

/// mTLS binding.
final class PagesDeploymentConfigValuesMtlsCertificatesValue {const PagesDeploymentConfigValuesMtlsCertificatesValue({required this.certificateId});

factory PagesDeploymentConfigValuesMtlsCertificatesValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesMtlsCertificatesValue(
  certificateId: json['certificate_id'] as String,
); }

final String certificateId;

Map<String, dynamic> toJson() { return {
  'certificate_id': certificateId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate_id') && json['certificate_id'] is String; } 
PagesDeploymentConfigValuesMtlsCertificatesValue copyWith({String? certificateId}) { return PagesDeploymentConfigValuesMtlsCertificatesValue(
  certificateId: certificateId ?? this.certificateId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesMtlsCertificatesValue &&
          certificateId == other.certificateId; } 
@override int get hashCode { return certificateId.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesMtlsCertificatesValue(certificateId: $certificateId)'; } 
 }
