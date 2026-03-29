// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_resource_id.dart';final class McnUpdateOnrampRequest {const McnUpdateOnrampRequest({this.attachedHubs, this.attachedVpcs, this.description, this.installRoutesInCloud, this.installRoutesInMagicWan, this.manageHubToHubAttachments, this.manageVpcToHubAttachments, this.name, this.vpc, });

factory McnUpdateOnrampRequest.fromJson(Map<String, dynamic> json) { return McnUpdateOnrampRequest(
  attachedHubs: (json['attached_hubs'] as List<dynamic>?)?.map((e) => McnResourceId.fromJson(e as String)).toList(),
  attachedVpcs: (json['attached_vpcs'] as List<dynamic>?)?.map((e) => McnResourceId.fromJson(e as String)).toList(),
  description: json['description'] as String?,
  installRoutesInCloud: json['install_routes_in_cloud'] as bool?,
  installRoutesInMagicWan: json['install_routes_in_magic_wan'] as bool?,
  manageHubToHubAttachments: json['manage_hub_to_hub_attachments'] as bool?,
  manageVpcToHubAttachments: json['manage_vpc_to_hub_attachments'] as bool?,
  name: json['name'] as String?,
  vpc: json['vpc'] != null ? McnResourceId.fromJson(json['vpc'] as String) : null,
); }

final List<McnResourceId>? attachedHubs;

final List<McnResourceId>? attachedVpcs;

final String? description;

final bool? installRoutesInCloud;

final bool? installRoutesInMagicWan;

final bool? manageHubToHubAttachments;

final bool? manageVpcToHubAttachments;

final String? name;

final McnResourceId? vpc;

Map<String, dynamic> toJson() { return {
  if (attachedHubs != null) 'attached_hubs': attachedHubs?.map((e) => e.toJson()).toList(),
  if (attachedVpcs != null) 'attached_vpcs': attachedVpcs?.map((e) => e.toJson()).toList(),
  'description': ?description,
  'install_routes_in_cloud': ?installRoutesInCloud,
  'install_routes_in_magic_wan': ?installRoutesInMagicWan,
  'manage_hub_to_hub_attachments': ?manageHubToHubAttachments,
  'manage_vpc_to_hub_attachments': ?manageVpcToHubAttachments,
  'name': ?name,
  if (vpc != null) 'vpc': vpc?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
McnUpdateOnrampRequest copyWith({List<McnResourceId> Function()? attachedHubs, List<McnResourceId> Function()? attachedVpcs, String Function()? description, bool Function()? installRoutesInCloud, bool Function()? installRoutesInMagicWan, bool Function()? manageHubToHubAttachments, bool Function()? manageVpcToHubAttachments, String Function()? name, McnResourceId Function()? vpc, }) { return McnUpdateOnrampRequest(
  attachedHubs: attachedHubs != null ? attachedHubs() : this.attachedHubs,
  attachedVpcs: attachedVpcs != null ? attachedVpcs() : this.attachedVpcs,
  description: description != null ? description() : this.description,
  installRoutesInCloud: installRoutesInCloud != null ? installRoutesInCloud() : this.installRoutesInCloud,
  installRoutesInMagicWan: installRoutesInMagicWan != null ? installRoutesInMagicWan() : this.installRoutesInMagicWan,
  manageHubToHubAttachments: manageHubToHubAttachments != null ? manageHubToHubAttachments() : this.manageHubToHubAttachments,
  manageVpcToHubAttachments: manageVpcToHubAttachments != null ? manageVpcToHubAttachments() : this.manageVpcToHubAttachments,
  name: name != null ? name() : this.name,
  vpc: vpc != null ? vpc() : this.vpc,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnUpdateOnrampRequest &&
          listEquals(attachedHubs, other.attachedHubs) &&
          listEquals(attachedVpcs, other.attachedVpcs) &&
          description == other.description &&
          installRoutesInCloud == other.installRoutesInCloud &&
          installRoutesInMagicWan == other.installRoutesInMagicWan &&
          manageHubToHubAttachments == other.manageHubToHubAttachments &&
          manageVpcToHubAttachments == other.manageVpcToHubAttachments &&
          name == other.name &&
          vpc == other.vpc; } 
@override int get hashCode { return Object.hash(Object.hashAll(attachedHubs ?? const []), Object.hashAll(attachedVpcs ?? const []), description, installRoutesInCloud, installRoutesInMagicWan, manageHubToHubAttachments, manageVpcToHubAttachments, name, vpc); } 
@override String toString() { return 'McnUpdateOnrampRequest(attachedHubs: $attachedHubs, attachedVpcs: $attachedVpcs, description: $description, installRoutesInCloud: $installRoutesInCloud, installRoutesInMagicWan: $installRoutesInMagicWan, manageHubToHubAttachments: $manageHubToHubAttachments, manageVpcToHubAttachments: $manageVpcToHubAttachments, name: $name, vpc: $vpc)'; } 
 }
