// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponseResultScanTaskScannedFrom {const UrlscannerGetScanResponseResultScanTaskScannedFrom({required this.colo});

factory UrlscannerGetScanResponseResultScanTaskScannedFrom.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanTaskScannedFrom(
  colo: json['colo'] as String,
); }

/// IATA code of Cloudflare datacenter
final String colo;

Map<String, dynamic> toJson() { return {
  'colo': colo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('colo') && json['colo'] is String; } 
UrlscannerGetScanResponseResultScanTaskScannedFrom copyWith({String? colo}) { return UrlscannerGetScanResponseResultScanTaskScannedFrom(
  colo: colo ?? this.colo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanTaskScannedFrom &&
          colo == other.colo; } 
@override int get hashCode { return colo.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanTaskScannedFrom(colo: $colo)'; } 
 }
