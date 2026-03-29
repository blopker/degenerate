// GENERATED CODE - DO NOT MODIFY BY HAND

/// When `?count=` is provided, the response will contain up to `count` results. Since results are not sorted, you are likely to get different data for repeated requests. `count` must be an integer > 0.
extension type const LogshareCount(int value) {
factory LogshareCount.fromJson(num json) => LogshareCount(json.toInt());

num toJson() => value;

}
