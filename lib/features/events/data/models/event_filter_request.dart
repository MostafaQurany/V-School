import 'package:json_annotation/json_annotation.dart';

part 'event_filter_request.g.dart';

@JsonSerializable()
class EventFilterRequest {
  @JsonKey(name: 'start_date')
  final String? startDate;

  @JsonKey(name: 'is_attend', toJson: _boolToInt)
  final bool? isAttend;

  @JsonKey(toJson: _boolToInt)
  final bool? attened; // note: backend uses "attened" not "attended"

  final int? category;

  @JsonKey(toJson: _boolToInt)
  final bool? finished;

  EventFilterRequest({
    this.startDate,
    this.isAttend,
    this.attened,
    this.category,
    this.finished,
  });

  /// Converts this object to a Map<String, dynamic> suitable for Retrofit @Queries()
  Map<String, dynamic> toJson() => _$EventFilterRequestToJson(this);

  factory EventFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$EventFilterRequestFromJson(json);

  // Helper function for boolean to int conversion
  static int? _boolToInt(bool? value) => value == null ? null : (value ? 1 : 0);
}
