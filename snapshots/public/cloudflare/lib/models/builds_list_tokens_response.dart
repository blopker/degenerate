// GENERATED CODE - DO NOT MODIFY BY HAND

import 'builds_build_token_name.dart';import 'builds_build_token_uuid.dart';import 'builds_cloudflare_token_id.dart';import 'builds_owner_type.dart';final class BuildsListTokensResponse {const BuildsListTokensResponse({this.buildTokenName, this.buildTokenUuid, this.cloudflareTokenId, this.ownerType, });

factory BuildsListTokensResponse.fromJson(Map<String, dynamic> json) { return BuildsListTokensResponse(
  buildTokenName: json['build_token_name'] != null ? BuildsBuildTokenName.fromJson(json['build_token_name'] as String) : null,
  buildTokenUuid: json['build_token_uuid'] != null ? BuildsBuildTokenUuid.fromJson(json['build_token_uuid'] as String) : null,
  cloudflareTokenId: json['cloudflare_token_id'] != null ? BuildsCloudflareTokenId.fromJson(json['cloudflare_token_id'] as String) : null,
  ownerType: json['owner_type'] != null ? BuildsOwnerType.fromJson(json['owner_type'] as String) : null,
); }

final BuildsBuildTokenName? buildTokenName;

final BuildsBuildTokenUuid? buildTokenUuid;

final BuildsCloudflareTokenId? cloudflareTokenId;

final BuildsOwnerType? ownerType;

Map<String, dynamic> toJson() { return {
  if (buildTokenName != null) 'build_token_name': buildTokenName?.toJson(),
  if (buildTokenUuid != null) 'build_token_uuid': buildTokenUuid?.toJson(),
  if (cloudflareTokenId != null) 'cloudflare_token_id': cloudflareTokenId?.toJson(),
  if (ownerType != null) 'owner_type': ownerType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'build_token_name', 'build_token_uuid', 'cloudflare_token_id', 'owner_type'}.contains(key)); } 
BuildsListTokensResponse copyWith({BuildsBuildTokenName Function()? buildTokenName, BuildsBuildTokenUuid Function()? buildTokenUuid, BuildsCloudflareTokenId Function()? cloudflareTokenId, BuildsOwnerType Function()? ownerType, }) { return BuildsListTokensResponse(
  buildTokenName: buildTokenName != null ? buildTokenName() : this.buildTokenName,
  buildTokenUuid: buildTokenUuid != null ? buildTokenUuid() : this.buildTokenUuid,
  cloudflareTokenId: cloudflareTokenId != null ? cloudflareTokenId() : this.cloudflareTokenId,
  ownerType: ownerType != null ? ownerType() : this.ownerType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsListTokensResponse &&
          buildTokenName == other.buildTokenName &&
          buildTokenUuid == other.buildTokenUuid &&
          cloudflareTokenId == other.cloudflareTokenId &&
          ownerType == other.ownerType; } 
@override int get hashCode { return Object.hash(buildTokenName, buildTokenUuid, cloudflareTokenId, ownerType); } 
@override String toString() { return 'BuildsListTokensResponse(buildTokenName: $buildTokenName, buildTokenUuid: $buildTokenUuid, cloudflareTokenId: $cloudflareTokenId, ownerType: $ownerType)'; } 
 }
