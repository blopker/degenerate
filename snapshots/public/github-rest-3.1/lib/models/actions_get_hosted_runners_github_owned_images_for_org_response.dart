// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actions_hosted_runner_curated_image.dart';@immutable final class ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse {const ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse({required this.totalCount, required this.images, });

factory ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse.fromJson(Map<String, dynamic> json) { return ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse(
  totalCount: (json['total_count'] as num).toInt(),
  images: (json['images'] as List<dynamic>).map((e) => ActionsHostedRunnerCuratedImage.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<ActionsHostedRunnerCuratedImage> images;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'images': images.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('images'); } 
ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse copyWith({int? totalCount, List<ActionsHostedRunnerCuratedImage>? images, }) { return ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse(
  totalCount: totalCount ?? this.totalCount,
  images: images ?? this.images,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse &&
          totalCount == other.totalCount &&
          listEquals(images, other.images); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(images)); } 
@override String toString() { return 'ActionsGetHostedRunnersGithubOwnedImagesForOrgResponse(totalCount: $totalCount, images: $images)'; } 
 }
