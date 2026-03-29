// GENERATED CODE - DO NOT MODIFY BY HAND

/// Rolling policy for file sinks (when & why to close a file and open a new one).
final class CloudflarePipelinesR2TablePublicRollingPolicy {const CloudflarePipelinesR2TablePublicRollingPolicy({this.fileSizeBytes, this.inactivitySeconds, this.intervalSeconds, });

factory CloudflarePipelinesR2TablePublicRollingPolicy.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesR2TablePublicRollingPolicy(
  fileSizeBytes: json['file_size_bytes'] != null ? (json['file_size_bytes'] as num).toInt() : null,
  inactivitySeconds: json['inactivity_seconds'] != null ? (json['inactivity_seconds'] as num).toInt() : null,
  intervalSeconds: json['interval_seconds'] != null ? (json['interval_seconds'] as num).toInt() : null,
); }

/// Files will be rolled after reaching this number of bytes
final int? fileSizeBytes;

/// Number of seconds of inactivity to wait before rolling over to a new file
final int? inactivitySeconds;

/// Number of seconds to wait before rolling over to a new file
final int? intervalSeconds;

Map<String, dynamic> toJson() { return {
  'file_size_bytes': ?fileSizeBytes,
  'inactivity_seconds': ?inactivitySeconds,
  'interval_seconds': ?intervalSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'file_size_bytes', 'inactivity_seconds', 'interval_seconds'}.contains(key)); } 
CloudflarePipelinesR2TablePublicRollingPolicy copyWith({int Function()? fileSizeBytes, int Function()? inactivitySeconds, int Function()? intervalSeconds, }) { return CloudflarePipelinesR2TablePublicRollingPolicy(
  fileSizeBytes: fileSizeBytes != null ? fileSizeBytes() : this.fileSizeBytes,
  inactivitySeconds: inactivitySeconds != null ? inactivitySeconds() : this.inactivitySeconds,
  intervalSeconds: intervalSeconds != null ? intervalSeconds() : this.intervalSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesR2TablePublicRollingPolicy &&
          fileSizeBytes == other.fileSizeBytes &&
          inactivitySeconds == other.inactivitySeconds &&
          intervalSeconds == other.intervalSeconds; } 
@override int get hashCode { return Object.hash(fileSizeBytes, inactivitySeconds, intervalSeconds); } 
@override String toString() { return 'CloudflarePipelinesR2TablePublicRollingPolicy(fileSizeBytes: $fileSizeBytes, inactivitySeconds: $inactivitySeconds, intervalSeconds: $intervalSeconds)'; } 
 }
