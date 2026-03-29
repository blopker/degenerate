// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanHarResponse2LogEntriesResponseContent {const UrlscannerGetScanHarResponse2LogEntriesResponseContent({this.compression, required this.mimeType, required this.size, });

factory UrlscannerGetScanHarResponse2LogEntriesResponseContent.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponse2LogEntriesResponseContent(
  compression: json['compression'] != null ? (json['compression'] as num).toInt() : null,
  mimeType: json['mimeType'] as String,
  size: (json['size'] as num).toDouble(),
); }

final int? compression;

final String mimeType;

final double size;

Map<String, dynamic> toJson() { return {
  'compression': ?compression,
  'mimeType': mimeType,
  'size': size,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mimeType') && json['mimeType'] is String &&
      json.containsKey('size') && json['size'] is num; } 
UrlscannerGetScanHarResponse2LogEntriesResponseContent copyWith({int Function()? compression, String? mimeType, double? size, }) { return UrlscannerGetScanHarResponse2LogEntriesResponseContent(
  compression: compression != null ? compression() : this.compression,
  mimeType: mimeType ?? this.mimeType,
  size: size ?? this.size,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponse2LogEntriesResponseContent &&
          compression == other.compression &&
          mimeType == other.mimeType &&
          size == other.size; } 
@override int get hashCode { return Object.hash(compression, mimeType, size); } 
@override String toString() { return 'UrlscannerGetScanHarResponse2LogEntriesResponseContent(compression: $compression, mimeType: $mimeType, size: $size)'; } 
 }
