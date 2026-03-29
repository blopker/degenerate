// GENERATED CODE - DO NOT MODIFY BY HAND

extension type Web3Timestamp(DateTime value) {
factory Web3Timestamp.fromJson(String json) => Web3Timestamp(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
