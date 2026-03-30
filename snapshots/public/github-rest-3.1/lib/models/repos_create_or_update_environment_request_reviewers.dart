// GENERATED CODE - DO NOT MODIFY BY HAND

import 'deployment_reviewer_type.dart';final class ReposCreateOrUpdateEnvironmentRequestReviewers {const ReposCreateOrUpdateEnvironmentRequestReviewers({this.type, this.id, });

factory ReposCreateOrUpdateEnvironmentRequestReviewers.fromJson(Map<String, dynamic> json) { return ReposCreateOrUpdateEnvironmentRequestReviewers(
  type: json['type'] != null ? DeploymentReviewerType.fromJson(json['type'] as String) : null,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
); }

/// The type of reviewer.
final DeploymentReviewerType? type;

/// The id of the user or team who can review the deployment
final int? id;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'id'}.contains(key)); } 
ReposCreateOrUpdateEnvironmentRequestReviewers copyWith({DeploymentReviewerType Function()? type, int Function()? id, }) { return ReposCreateOrUpdateEnvironmentRequestReviewers(
  type: type != null ? type() : this.type,
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateOrUpdateEnvironmentRequestReviewers &&
          type == other.type &&
          id == other.id; } 
@override int get hashCode { return Object.hash(type, id); } 
@override String toString() { return 'ReposCreateOrUpdateEnvironmentRequestReviewers(type: $type, id: $id)'; } 
 }
