// GENERATED CODE - DO NOT MODIFY BY HAND

/// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
extension type LogpushDestinationConf(Uri value) {
factory LogpushDestinationConf.fromJson(String json) => LogpushDestinationConf(Uri.parse(json));

String toJson() => value.toString();

}
