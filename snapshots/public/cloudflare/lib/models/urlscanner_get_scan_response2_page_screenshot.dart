// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponse2PageScreenshot {const UrlscannerGetScanResponse2PageScreenshot({required this.dhash, required this.mm3Hash, required this.name, required this.phash, });

factory UrlscannerGetScanResponse2PageScreenshot.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2PageScreenshot(
  dhash: json['dhash'] as String,
  mm3Hash: (json['mm3Hash'] as num).toDouble(),
  name: json['name'] as String,
  phash: json['phash'] as String,
); }

final String dhash;

final double mm3Hash;

final String name;

final String phash;

Map<String, dynamic> toJson() { return {
  'dhash': dhash,
  'mm3Hash': mm3Hash,
  'name': name,
  'phash': phash,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dhash') && json['dhash'] is String &&
      json.containsKey('mm3Hash') && json['mm3Hash'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('phash') && json['phash'] is String; } 
UrlscannerGetScanResponse2PageScreenshot copyWith({String? dhash, double? mm3Hash, String? name, String? phash, }) { return UrlscannerGetScanResponse2PageScreenshot(
  dhash: dhash ?? this.dhash,
  mm3Hash: mm3Hash ?? this.mm3Hash,
  name: name ?? this.name,
  phash: phash ?? this.phash,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2PageScreenshot &&
          dhash == other.dhash &&
          mm3Hash == other.mm3Hash &&
          name == other.name &&
          phash == other.phash; } 
@override int get hashCode { return Object.hash(dhash, mm3Hash, name, phash); } 
@override String toString() { return 'UrlscannerGetScanResponse2PageScreenshot(dhash: $dhash, mm3Hash: $mm3Hash, name: $name, phash: $phash)'; } 
 }
