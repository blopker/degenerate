// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerSearchScansResponse2ResultsVerdicts {const UrlscannerSearchScansResponse2ResultsVerdicts({required this.malicious});

factory UrlscannerSearchScansResponse2ResultsVerdicts.fromJson(Map<String, dynamic> json) { return UrlscannerSearchScansResponse2ResultsVerdicts(
  malicious: json['malicious'] as bool,
); }

final bool malicious;

Map<String, dynamic> toJson() { return {
  'malicious': malicious,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('malicious') && json['malicious'] is bool; } 
UrlscannerSearchScansResponse2ResultsVerdicts copyWith({bool? malicious}) { return UrlscannerSearchScansResponse2ResultsVerdicts(
  malicious: malicious ?? this.malicious,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerSearchScansResponse2ResultsVerdicts &&
          malicious == other.malicious; } 
@override int get hashCode { return malicious.hashCode; } 
@override String toString() { return 'UrlscannerSearchScansResponse2ResultsVerdicts(malicious: $malicious)'; } 
 }
