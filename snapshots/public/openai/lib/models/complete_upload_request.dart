// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CompleteUploadRequest {const CompleteUploadRequest({required this.partIds, this.md5, });

factory CompleteUploadRequest.fromJson(Map<String, dynamic> json) { return CompleteUploadRequest(
  partIds: (json['part_ids'] as List<dynamic>).map((e) => e as String).toList(),
  md5: json['md5'] as String?,
); }

/// The ordered list of Part IDs.
/// 
final List<String> partIds;

/// The optional md5 checksum for the file contents to verify if the bytes uploaded matches what you expect.
/// 
final String? md5;

Map<String, dynamic> toJson() { return {
  'part_ids': partIds,
  'md5': ?md5,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('part_ids'); } 
CompleteUploadRequest copyWith({List<String>? partIds, String Function()? md5, }) { return CompleteUploadRequest(
  partIds: partIds ?? this.partIds,
  md5: md5 != null ? md5() : this.md5,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CompleteUploadRequest &&
          listEquals(partIds, other.partIds) &&
          md5 == other.md5; } 
@override int get hashCode { return Object.hash(Object.hashAll(partIds), md5); } 
@override String toString() { return 'CompleteUploadRequest(partIds: $partIds, md5: $md5)'; } 
 }
