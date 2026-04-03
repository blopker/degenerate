// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0 {const RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0({required this.clean, required this.compromised, });

factory RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0(
  clean: json['CLEAN'] as String,
  compromised: json['COMPROMISED'] as String,
); }

/// A numeric string.
final String clean;

/// A numeric string.
final String compromised;

Map<String, dynamic> toJson() { return {
  'CLEAN': clean,
  'COMPROMISED': compromised,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('CLEAN') && json['CLEAN'] is String &&
      json.containsKey('COMPROMISED') && json['COMPROMISED'] is String; } 
RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0 copyWith({String? clean, String? compromised, }) { return RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0(
  clean: clean ?? this.clean,
  compromised: compromised ?? this.compromised,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0 &&
          clean == other.clean &&
          compromised == other.compromised; } 
@override int get hashCode { return Object.hash(clean, compromised); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryByCompromisedResponseResultSummary0(clean: $clean, compromised: $compromised)'; } 
 }
