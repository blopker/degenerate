// GENERATED CODE - DO NOT MODIFY BY HAND

/// Asset file to upload.
extension type const CloudforceOneRequestsAssetContent(String value) {
factory CloudforceOneRequestsAssetContent.fromJson(String json) => CloudforceOneRequestsAssetContent(json);

String toJson() => value;

}
final class CloudforceOneRequestsRequestAssetEdit {const CloudforceOneRequestsRequestAssetEdit({this.source});

factory CloudforceOneRequestsRequestAssetEdit.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestAssetEdit(
  source: json['source'] != null ? CloudforceOneRequestsAssetContent.fromJson(json['source'] as String) : null,
); }

/// Asset file to upload.
final CloudforceOneRequestsAssetContent? source;

Map<String, dynamic> toJson() { return {
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CloudforceOneRequestsRequestAssetEdit copyWith({CloudforceOneRequestsAssetContent Function()? source}) { return CloudforceOneRequestsRequestAssetEdit(
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestAssetEdit &&
          source == other.source; } 
@override int get hashCode { return source.hashCode; } 
@override String toString() { return 'CloudforceOneRequestsRequestAssetEdit(source: $source)'; } 
 }
