// GENERATED CODE - DO NOT MODIFY BY HAND

final class SourceTypeAlipay {const SourceTypeAlipay({this.dataString, this.nativeUrl, this.statementDescriptor, });

factory SourceTypeAlipay.fromJson(Map<String, dynamic> json) { return SourceTypeAlipay(
  dataString: json['data_string'] as String?,
  nativeUrl: json['native_url'] as String?,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

final String? dataString;

final String? nativeUrl;

final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'data_string': ?dataString,
  'native_url': ?nativeUrl,
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SourceTypeAlipay copyWith({String? Function()? dataString, String? Function()? nativeUrl, String? Function()? statementDescriptor, }) { return SourceTypeAlipay(
  dataString: dataString != null ? dataString() : this.dataString,
  nativeUrl: nativeUrl != null ? nativeUrl() : this.nativeUrl,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAlipay &&
          dataString == other.dataString &&
          nativeUrl == other.nativeUrl &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(dataString, nativeUrl, statementDescriptor); } 
@override String toString() { return 'SourceTypeAlipay(dataString: $dataString, nativeUrl: $nativeUrl, statementDescriptor: $statementDescriptor)'; } 
 }
