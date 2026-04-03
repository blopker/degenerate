// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive {const AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive._(this.value);

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive.fromJson(String json) { return switch (json) {
  'true' => $true,
  'false' => $false,
  _ => AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive._(json),
}; }

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive $true = AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive._('true');

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive $false = AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive._('false');

static const List<AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive> values = [$true, $false];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive($value)'; } 
 }
@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion {const AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion({required this.active, required this.createdAt, required this.data, required this.versionId, this.comment, });

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion(
  active: AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive.fromJson(json['active'] as String),
  comment: json['comment'] as String?,
  createdAt: json['created_at'] as String,
  data: json['data'] as String,
  versionId: json['version_id'] as String,
); }

final AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive active;

final String? comment;

final String createdAt;

final String data;

final String versionId;

Map<String, dynamic> toJson() { return {
  'active': active.toJson(),
  'comment': ?comment,
  'created_at': createdAt,
  'data': data,
  'version_id': versionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('data') && json['data'] is String &&
      json.containsKey('version_id') && json['version_id'] is String; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion copyWith({AigConfigListGatewayDynamicRoutesResponseDataRoutesVersionActive? active, String? Function()? comment, String? createdAt, String? data, String? versionId, }) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion(
  active: active ?? this.active,
  comment: comment != null ? comment() : this.comment,
  createdAt: createdAt ?? this.createdAt,
  data: data ?? this.data,
  versionId: versionId ?? this.versionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion &&
          active == other.active &&
          comment == other.comment &&
          createdAt == other.createdAt &&
          data == other.data &&
          versionId == other.versionId; } 
@override int get hashCode { return Object.hash(active, comment, createdAt, data, versionId); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesVersion(active: $active, comment: $comment, createdAt: $createdAt, data: $data, versionId: $versionId)'; } 
 }
