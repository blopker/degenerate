// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details of the worker that receives and edits Zaraz Context object.
final class ZarazZarazConfigReturnSettingsContextEnricher {const ZarazZarazConfigReturnSettingsContextEnricher({required this.escapedWorkerName, required this.workerTag, });

factory ZarazZarazConfigReturnSettingsContextEnricher.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnSettingsContextEnricher(
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
ZarazZarazConfigReturnSettingsContextEnricher copyWith({String? escapedWorkerName, String? workerTag, }) { return ZarazZarazConfigReturnSettingsContextEnricher(
  escapedWorkerName: escapedWorkerName ?? this.escapedWorkerName,
  workerTag: workerTag ?? this.workerTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturnSettingsContextEnricher &&
          escapedWorkerName == other.escapedWorkerName &&
          workerTag == other.workerTag; } 
@override int get hashCode { return Object.hash(escapedWorkerName, workerTag); } 
@override String toString() { return 'ZarazZarazConfigReturnSettingsContextEnricher(escapedWorkerName: $escapedWorkerName, workerTag: $workerTag)'; } 
 }
