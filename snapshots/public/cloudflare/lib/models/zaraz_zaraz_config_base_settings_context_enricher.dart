// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Details of the worker that receives and edits Zaraz Context object.
@immutable final class ZarazZarazConfigBaseSettingsContextEnricher {const ZarazZarazConfigBaseSettingsContextEnricher({required this.escapedWorkerName, required this.workerTag, });

factory ZarazZarazConfigBaseSettingsContextEnricher.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseSettingsContextEnricher(
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
ZarazZarazConfigBaseSettingsContextEnricher copyWith({String? escapedWorkerName, String? workerTag, }) { return ZarazZarazConfigBaseSettingsContextEnricher(
  escapedWorkerName: escapedWorkerName ?? this.escapedWorkerName,
  workerTag: workerTag ?? this.workerTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBaseSettingsContextEnricher &&
          escapedWorkerName == other.escapedWorkerName &&
          workerTag == other.workerTag; } 
@override int get hashCode { return Object.hash(escapedWorkerName, workerTag); } 
@override String toString() { return 'ZarazZarazConfigBaseSettingsContextEnricher(escapedWorkerName: $escapedWorkerName, workerTag: $workerTag)'; } 
 }
