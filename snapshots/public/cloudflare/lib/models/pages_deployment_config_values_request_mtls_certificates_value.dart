// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// mTLS binding.
@immutable final class PagesDeploymentConfigValuesRequestMtlsCertificatesValue {const PagesDeploymentConfigValuesRequestMtlsCertificatesValue({required this.certificateId});

factory PagesDeploymentConfigValuesRequestMtlsCertificatesValue.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesRequestMtlsCertificatesValue(
  certificateId: json['certificate_id'] as String,
); }

final String certificateId;

Map<String, dynamic> toJson() { return {
  'certificate_id': certificateId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate_id') && json['certificate_id'] is String; } 
PagesDeploymentConfigValuesRequestMtlsCertificatesValue copyWith({String? certificateId}) { return PagesDeploymentConfigValuesRequestMtlsCertificatesValue(
  certificateId: certificateId ?? this.certificateId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesRequestMtlsCertificatesValue &&
          certificateId == other.certificateId; } 
@override int get hashCode { return certificateId.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesRequestMtlsCertificatesValue(certificateId: $certificateId)'; } 
 }
