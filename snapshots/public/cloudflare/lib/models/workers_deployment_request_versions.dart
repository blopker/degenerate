// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersDeploymentRequestVersions {const WorkersDeploymentRequestVersions({required this.percentage, required this.versionId, });

factory WorkersDeploymentRequestVersions.fromJson(Map<String, dynamic> json) {return WorkersDeploymentRequestVersions(
  percentage: (json['percentage'] as num).toDouble(),
  versionId: json['version_id'] as String,
);}

final double percentage;

final String versionId;

Map<String, dynamic> toJson() {return {
  'percentage': percentage,
  'version_id': versionId,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('percentage') && json['percentage'] is num &&
      json.containsKey('version_id') && json['version_id'] is String;}
WorkersDeploymentRequestVersions copyWith({double? percentage, String? versionId, }) {return WorkersDeploymentRequestVersions(
  percentage: percentage ?? this.percentage,
  versionId: versionId ?? this.versionId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersDeploymentRequestVersions &&
          percentage == other.percentage &&
          versionId == other.versionId;}
@override int get hashCode {return Object.hash(percentage, versionId);}
@override String toString() {return 'WorkersDeploymentRequestVersions(percentage: $percentage, versionId: $versionId)';}
}
