// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_announcements_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAnnouncementsResponse _$GetAnnouncementsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAnnouncementsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAnnouncementsResponse {
  List<Announcement> get data => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this GetAnnouncementsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAnnouncementsResponseCopyWith<GetAnnouncementsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAnnouncementsResponseCopyWith<$Res> {
  factory $GetAnnouncementsResponseCopyWith(GetAnnouncementsResponse value,
          $Res Function(GetAnnouncementsResponse) then) =
      _$GetAnnouncementsResponseCopyWithImpl<$Res, GetAnnouncementsResponse>;
  @useResult
  $Res call({List<Announcement> data, bool error, String? message});
}

/// @nodoc
class _$GetAnnouncementsResponseCopyWithImpl<$Res,
        $Val extends GetAnnouncementsResponse>
    implements $GetAnnouncementsResponseCopyWith<$Res> {
  _$GetAnnouncementsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAnnouncementsResponseImplCopyWith<$Res>
    implements $GetAnnouncementsResponseCopyWith<$Res> {
  factory _$$GetAnnouncementsResponseImplCopyWith(
          _$GetAnnouncementsResponseImpl value,
          $Res Function(_$GetAnnouncementsResponseImpl) then) =
      __$$GetAnnouncementsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Announcement> data, bool error, String? message});
}

/// @nodoc
class __$$GetAnnouncementsResponseImplCopyWithImpl<$Res>
    extends _$GetAnnouncementsResponseCopyWithImpl<$Res,
        _$GetAnnouncementsResponseImpl>
    implements _$$GetAnnouncementsResponseImplCopyWith<$Res> {
  __$$GetAnnouncementsResponseImplCopyWithImpl(
      _$GetAnnouncementsResponseImpl _value,
      $Res Function(_$GetAnnouncementsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
    Object? message = freezed,
  }) {
    return _then(_$GetAnnouncementsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAnnouncementsResponseImpl implements _GetAnnouncementsResponse {
  const _$GetAnnouncementsResponseImpl(
      {required final List<Announcement> data,
      required this.error,
      this.message})
      : _data = data;

  factory _$GetAnnouncementsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAnnouncementsResponseImplFromJson(json);

  final List<Announcement> _data;
  @override
  List<Announcement> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool error;
  @override
  final String? message;

  @override
  String toString() {
    return 'GetAnnouncementsResponse(data: $data, error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAnnouncementsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), error, message);

  /// Create a copy of GetAnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAnnouncementsResponseImplCopyWith<_$GetAnnouncementsResponseImpl>
      get copyWith => __$$GetAnnouncementsResponseImplCopyWithImpl<
          _$GetAnnouncementsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAnnouncementsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAnnouncementsResponse implements GetAnnouncementsResponse {
  const factory _GetAnnouncementsResponse(
      {required final List<Announcement> data,
      required final bool error,
      final String? message}) = _$GetAnnouncementsResponseImpl;

  factory _GetAnnouncementsResponse.fromJson(Map<String, dynamic> json) =
      _$GetAnnouncementsResponseImpl.fromJson;

  @override
  List<Announcement> get data;
  @override
  bool get error;
  @override
  String? get message;

  /// Create a copy of GetAnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAnnouncementsResponseImplCopyWith<_$GetAnnouncementsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
