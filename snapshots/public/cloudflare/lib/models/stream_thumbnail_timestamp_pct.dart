// GENERATED CODE - DO NOT MODIFY BY HAND

/// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
extension type const StreamThumbnailTimestampPct(double value) {
factory StreamThumbnailTimestampPct.fromJson(num json) => StreamThumbnailTimestampPct(json.toDouble());

num toJson() => value;

}
