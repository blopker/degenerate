// GENERATED CODE - DO NOT MODIFY BY HAND

/// The sample parameter is the sample rate of the records set by the client: "sample": 1 is 100% of records "sample": 10 is 10% and so on.
extension type const LogpushSample(int value) {
factory LogpushSample.fromJson(num json) => LogpushSample(json.toInt());

num toJson() => value;

}
