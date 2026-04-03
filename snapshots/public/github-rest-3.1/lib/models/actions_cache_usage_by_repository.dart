// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// GitHub Actions Cache Usage by repository.
@immutable final class ActionsCacheUsageByRepository {const ActionsCacheUsageByRepository({required this.fullName, required this.activeCachesSizeInBytes, required this.activeCachesCount, });

factory ActionsCacheUsageByRepository.fromJson(Map<String, dynamic> json) { return ActionsCacheUsageByRepository(
  fullName: json['full_name'] as String,
  activeCachesSizeInBytes: (json['active_caches_size_in_bytes'] as num).toInt(),
  activeCachesCount: (json['active_caches_count'] as num).toInt(),
); }

/// The repository owner and name for the cache usage being shown.
final String fullName;

/// The sum of the size in bytes of all the active cache items in the repository.
final int activeCachesSizeInBytes;

/// The number of active caches in the repository.
final int activeCachesCount;

Map<String, dynamic> toJson() { return {
  'full_name': fullName,
  'active_caches_size_in_bytes': activeCachesSizeInBytes,
  'active_caches_count': activeCachesCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('full_name') && json['full_name'] is String &&
      json.containsKey('active_caches_size_in_bytes') && json['active_caches_size_in_bytes'] is num &&
      json.containsKey('active_caches_count') && json['active_caches_count'] is num; } 
ActionsCacheUsageByRepository copyWith({String? fullName, int? activeCachesSizeInBytes, int? activeCachesCount, }) { return ActionsCacheUsageByRepository(
  fullName: fullName ?? this.fullName,
  activeCachesSizeInBytes: activeCachesSizeInBytes ?? this.activeCachesSizeInBytes,
  activeCachesCount: activeCachesCount ?? this.activeCachesCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheUsageByRepository &&
          fullName == other.fullName &&
          activeCachesSizeInBytes == other.activeCachesSizeInBytes &&
          activeCachesCount == other.activeCachesCount; } 
@override int get hashCode { return Object.hash(fullName, activeCachesSizeInBytes, activeCachesCount); } 
@override String toString() { return 'ActionsCacheUsageByRepository(fullName: $fullName, activeCachesSizeInBytes: $activeCachesSizeInBytes, activeCachesCount: $activeCachesCount)'; } 
 }
