import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_event_response.g.dart';

@JsonSerializable()
class GetEventResponse {
  String? message;
  bool? error;

  @JsonKey(name: 'data')
  List<Event>? events;
  GetEventResponse({
    this.message,
    this.error,
    this.events,
  });
  factory GetEventResponse.fromJson(Map<String, dynamic> json) =>
      _$GetEventResponseFromJson(json);
}

@JsonSerializable()
class Event {
  int? id;
  String? name;
  String? description;
  String? content;
  int? isFeatured;
  String? image;
  int? views;
  DateTime? startDate;
  DateTime? endDate;
  String? address;
  Country? country;
  @JsonKey(name: 'state')
  EventState? state;

  int? attended;

  int? isAttend;

  Event({
    this.id,
    this.name,
    this.description,
    this.content,
    this.isFeatured,
    this.image,
    this.views,
    this.startDate,
    this.endDate,
    this.address,
    this.country,
    this.state,
    this.attended,
    this.isAttend,
  });
  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@JsonSerializable()
class Country {
  int id;
  String name;
  String code;
  Country({
    required this.id,
    required this.name,
    required this.code,
  });
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@JsonSerializable()
class EventState {
  int id;
  String name;
  EventState({
    required this.id,
    required this.name,
  });
  factory EventState.fromJson(Map<String, dynamic> json) =>
      _$EventStateFromJson(json);
}

@JsonSerializable()
class City {
  int id;
  String name;

  City({
    required this.id,
    required this.name,
  });
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
