// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeAlipay {const SourceTypeAlipay({this.dataString = const Omittable.absent(), this.nativeUrl = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory SourceTypeAlipay.fromJson(Map<String, dynamic> json) { return SourceTypeAlipay(
  dataString: json.containsKey('data_string') ? Omittable(json['data_string'] as String?) : const Omittable.absent(),
  nativeUrl: json.containsKey('native_url') ? Omittable(json['native_url'] as String?) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> dataString;

final Omittable<String?> nativeUrl;

final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  if (dataString.isPresent) 'data_string': dataString.value,
  if (nativeUrl.isPresent) 'native_url': nativeUrl.value,
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data_string', 'native_url', 'statement_descriptor'}.contains(key)); } 
SourceTypeAlipay copyWith({Omittable<String?>? dataString, Omittable<String?>? nativeUrl, Omittable<String?>? statementDescriptor, }) { return SourceTypeAlipay(
  dataString: dataString ?? this.dataString,
  nativeUrl: nativeUrl ?? this.nativeUrl,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAlipay &&
          dataString == other.dataString &&
          nativeUrl == other.nativeUrl &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(dataString, nativeUrl, statementDescriptor); } 
@override String toString() { return 'SourceTypeAlipay(dataString: $dataString, nativeUrl: $nativeUrl, statementDescriptor: $statementDescriptor)'; } 
 }
