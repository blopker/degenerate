// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_created_at.dart';import 'tunnel_deleted_at.dart';import 'tunnel_subnet_comment.dart';import 'tunnel_subnet_id.dart';import 'tunnel_subnet_ip_network.dart';import 'tunnel_subnet_is_default_network.dart';import 'tunnel_subnet_name.dart';import 'tunnel_subnet_type.dart';@immutable final class TunnelSubnetResponseSingleNullableResult {const TunnelSubnetResponseSingleNullableResult({this.comment, this.createdAt, this.deletedAt, this.id, this.isDefaultNetwork, this.name, this.network, this.subnetType, });

factory TunnelSubnetResponseSingleNullableResult.fromJson(Map<String, dynamic> json) { return TunnelSubnetResponseSingleNullableResult(
  comment: json['comment'] != null ? TunnelSubnetComment.fromJson(json['comment'] as String) : null,
  createdAt: json['created_at'] != null ? TunnelCreatedAt.fromJson(json['created_at'] as String) : null,
  deletedAt: json['deleted_at'] != null ? TunnelDeletedAt.fromJson(json['deleted_at'] as String) : null,
  id: json['id'] != null ? TunnelSubnetId.fromJson(json['id'] as String) : null,
  isDefaultNetwork: json['is_default_network'] != null ? TunnelSubnetIsDefaultNetwork.fromJson(json['is_default_network'] as bool) : null,
  name: json['name'] != null ? TunnelSubnetName.fromJson(json['name'] as String) : null,
  network: json['network'] != null ? TunnelSubnetIpNetwork.fromJson(json['network'] as String) : null,
  subnetType: json['subnet_type'] != null ? TunnelSubnetType.fromJson(json['subnet_type'] as String) : null,
); }

/// An optional description of the subnet.
final TunnelSubnetComment? comment;

/// Timestamp of when the resource was created.
final TunnelCreatedAt? createdAt;

/// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
final TunnelDeletedAt? deletedAt;

/// The UUID of the subnet.
final TunnelSubnetId? id;

/// If `true`, this is the default subnet for the account. There can only be one default subnet per account.
final TunnelSubnetIsDefaultNetwork? isDefaultNetwork;

/// A user-friendly name for the subnet.
final TunnelSubnetName? name;

/// The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
final TunnelSubnetIpNetwork? network;

final TunnelSubnetType? subnetType;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (deletedAt != null) 'deleted_at': deletedAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (isDefaultNetwork != null) 'is_default_network': isDefaultNetwork?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (network != null) 'network': network?.toJson(),
  if (subnetType != null) 'subnet_type': subnetType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'created_at', 'deleted_at', 'id', 'is_default_network', 'name', 'network', 'subnet_type'}.contains(key)); } 
TunnelSubnetResponseSingleNullableResult copyWith({TunnelSubnetComment? Function()? comment, TunnelCreatedAt? Function()? createdAt, TunnelDeletedAt? Function()? deletedAt, TunnelSubnetId? Function()? id, TunnelSubnetIsDefaultNetwork? Function()? isDefaultNetwork, TunnelSubnetName? Function()? name, TunnelSubnetIpNetwork? Function()? network, TunnelSubnetType? Function()? subnetType, }) { return TunnelSubnetResponseSingleNullableResult(
  comment: comment != null ? comment() : this.comment,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  deletedAt: deletedAt != null ? deletedAt() : this.deletedAt,
  id: id != null ? id() : this.id,
  isDefaultNetwork: isDefaultNetwork != null ? isDefaultNetwork() : this.isDefaultNetwork,
  name: name != null ? name() : this.name,
  network: network != null ? network() : this.network,
  subnetType: subnetType != null ? subnetType() : this.subnetType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelSubnetResponseSingleNullableResult &&
          comment == other.comment &&
          createdAt == other.createdAt &&
          deletedAt == other.deletedAt &&
          id == other.id &&
          isDefaultNetwork == other.isDefaultNetwork &&
          name == other.name &&
          network == other.network &&
          subnetType == other.subnetType; } 
@override int get hashCode { return Object.hash(comment, createdAt, deletedAt, id, isDefaultNetwork, name, network, subnetType); } 
@override String toString() { return 'TunnelSubnetResponseSingleNullableResult(comment: $comment, createdAt: $createdAt, deletedAt: $deletedAt, id: $id, isDefaultNetwork: $isDefaultNetwork, name: $name, network: $network, subnetType: $subnetType)'; } 
 }
