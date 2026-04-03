// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsUpdateHostedRunnerForOrgRequest {const ActionsUpdateHostedRunnerForOrgRequest({this.name, this.runnerGroupId, this.maximumRunners, this.enableStaticIp, this.size, this.imageId, this.imageVersion, });

factory ActionsUpdateHostedRunnerForOrgRequest.fromJson(Map<String, dynamic> json) { return ActionsUpdateHostedRunnerForOrgRequest(
  name: json['name'] as String?,
  runnerGroupId: json['runner_group_id'] != null ? (json['runner_group_id'] as num).toInt() : null,
  maximumRunners: json['maximum_runners'] != null ? (json['maximum_runners'] as num).toInt() : null,
  enableStaticIp: json['enable_static_ip'] as bool?,
  size: json['size'] as String?,
  imageId: json['image_id'] as String?,
  imageVersion: json['image_version'] as String?,
); }

/// Name of the runner. Must be between 1 and 64 characters and may only contain upper and lowercase letters a-z, numbers 0-9, '.', '-', and '_'.
final String? name;

/// The existing runner group to add this runner to.
final int? runnerGroupId;

/// The maximum amount of runners to scale up to. Runners will not auto-scale above this number. Use this setting to limit your cost.
final int? maximumRunners;

/// Whether this runner should be updated with a static public IP. Note limit on account. To list limits on account, use `GET actions/hosted-runners/limits`
final bool? enableStaticIp;

/// The machine size of the runner. To list available sizes, use `GET actions/hosted-runners/machine-sizes`
final String? size;

/// The unique identifier of the runner image. To list available images, use `GET /actions/hosted-runners/images/github-owned`, `GET /actions/hosted-runners/images/partner`, or `GET /actions/hosted-runners/images/custom`.
final String? imageId;

/// The version of the runner image to deploy. This is relevant only for runners using custom images.
final String? imageVersion;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'runner_group_id': ?runnerGroupId,
  'maximum_runners': ?maximumRunners,
  'enable_static_ip': ?enableStaticIp,
  'size': ?size,
  'image_id': ?imageId,
  'image_version': ?imageVersion,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'runner_group_id', 'maximum_runners', 'enable_static_ip', 'size', 'image_id', 'image_version'}.contains(key)); } 
ActionsUpdateHostedRunnerForOrgRequest copyWith({String Function()? name, int Function()? runnerGroupId, int Function()? maximumRunners, bool Function()? enableStaticIp, String Function()? size, String Function()? imageId, String? Function()? imageVersion, }) { return ActionsUpdateHostedRunnerForOrgRequest(
  name: name != null ? name() : this.name,
  runnerGroupId: runnerGroupId != null ? runnerGroupId() : this.runnerGroupId,
  maximumRunners: maximumRunners != null ? maximumRunners() : this.maximumRunners,
  enableStaticIp: enableStaticIp != null ? enableStaticIp() : this.enableStaticIp,
  size: size != null ? size() : this.size,
  imageId: imageId != null ? imageId() : this.imageId,
  imageVersion: imageVersion != null ? imageVersion() : this.imageVersion,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsUpdateHostedRunnerForOrgRequest &&
          name == other.name &&
          runnerGroupId == other.runnerGroupId &&
          maximumRunners == other.maximumRunners &&
          enableStaticIp == other.enableStaticIp &&
          size == other.size &&
          imageId == other.imageId &&
          imageVersion == other.imageVersion; } 
@override int get hashCode { return Object.hash(name, runnerGroupId, maximumRunners, enableStaticIp, size, imageId, imageVersion); } 
@override String toString() { return 'ActionsUpdateHostedRunnerForOrgRequest(name: $name, runnerGroupId: $runnerGroupId, maximumRunners: $maximumRunners, enableStaticIp: $enableStaticIp, size: $size, imageId: $imageId, imageVersion: $imageVersion)'; } 
 }
