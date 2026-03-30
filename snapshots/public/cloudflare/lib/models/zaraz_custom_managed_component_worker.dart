// GENERATED CODE - DO NOT MODIFY BY HAND

/// Cloudflare worker that acts as a managed component
final class ZarazCustomManagedComponentWorker {const ZarazCustomManagedComponentWorker({required this.escapedWorkerName, required this.workerTag, });

factory ZarazCustomManagedComponentWorker.fromJson(Map<String, dynamic> json) { return ZarazCustomManagedComponentWorker(
  escapedWorkerName: json['escapedWorkerName'] as String,
  workerTag: json['workerTag'] as String,
); }

final String escapedWorkerName;

final String workerTag;

Map<String, dynamic> toJson() { return {
  'escapedWorkerName': escapedWorkerName,
  'workerTag': workerTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('escapedWorkerName') && json['escapedWorkerName'] is String &&
      json.containsKey('workerTag') && json['workerTag'] is String; } 
ZarazCustomManagedComponentWorker copyWith({String? escapedWorkerName, String? workerTag, }) { return ZarazCustomManagedComponentWorker(
  escapedWorkerName: escapedWorkerName ?? this.escapedWorkerName,
  workerTag: workerTag ?? this.workerTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazCustomManagedComponentWorker &&
          escapedWorkerName == other.escapedWorkerName &&
          workerTag == other.workerTag; } 
@override int get hashCode { return Object.hash(escapedWorkerName, workerTag); } 
@override String toString() { return 'ZarazCustomManagedComponentWorker(escapedWorkerName: $escapedWorkerName, workerTag: $workerTag)'; } 
 }
