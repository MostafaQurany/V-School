// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEventsLoading,
    required TResult Function(String message) getEventsError,
    required TResult Function(List<Event> events) getEventsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEventsLoading,
    TResult? Function(String message)? getEventsError,
    TResult? Function(List<Event> events)? getEventsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEventsLoading,
    TResult Function(String message)? getEventsError,
    TResult Function(List<Event> events)? getEventsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetEventsLoading value) getEventsLoading,
    required TResult Function(GetEventsError value) getEventsError,
    required TResult Function(GetEventsSuccess value) getEventsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetEventsLoading value)? getEventsLoading,
    TResult? Function(GetEventsError value)? getEventsError,
    TResult? Function(GetEventsSuccess value)? getEventsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetEventsLoading value)? getEventsLoading,
    TResult Function(GetEventsError value)? getEventsError,
    TResult Function(GetEventsSuccess value)? getEventsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EventsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEventsLoading,
    required TResult Function(String message) getEventsError,
    required TResult Function(List<Event> events) getEventsSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEventsLoading,
    TResult? Function(String message)? getEventsError,
    TResult? Function(List<Event> events)? getEventsSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEventsLoading,
    TResult Function(String message)? getEventsError,
    TResult Function(List<Event> events)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetEventsLoading value) getEventsLoading,
    required TResult Function(GetEventsError value) getEventsError,
    required TResult Function(GetEventsSuccess value) getEventsSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetEventsLoading value)? getEventsLoading,
    TResult? Function(GetEventsError value)? getEventsError,
    TResult? Function(GetEventsSuccess value)? getEventsSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetEventsLoading value)? getEventsLoading,
    TResult Function(GetEventsError value)? getEventsError,
    TResult Function(GetEventsSuccess value)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetEventsLoadingImplCopyWith<$Res> {
  factory _$$GetEventsLoadingImplCopyWith(_$GetEventsLoadingImpl value,
          $Res Function(_$GetEventsLoadingImpl) then) =
      __$$GetEventsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventsLoadingImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$GetEventsLoadingImpl>
    implements _$$GetEventsLoadingImplCopyWith<$Res> {
  __$$GetEventsLoadingImplCopyWithImpl(_$GetEventsLoadingImpl _value,
      $Res Function(_$GetEventsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetEventsLoadingImpl implements GetEventsLoading {
  const _$GetEventsLoadingImpl();

  @override
  String toString() {
    return 'EventsState.getEventsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEventsLoading,
    required TResult Function(String message) getEventsError,
    required TResult Function(List<Event> events) getEventsSuccess,
  }) {
    return getEventsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEventsLoading,
    TResult? Function(String message)? getEventsError,
    TResult? Function(List<Event> events)? getEventsSuccess,
  }) {
    return getEventsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEventsLoading,
    TResult Function(String message)? getEventsError,
    TResult Function(List<Event> events)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (getEventsLoading != null) {
      return getEventsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetEventsLoading value) getEventsLoading,
    required TResult Function(GetEventsError value) getEventsError,
    required TResult Function(GetEventsSuccess value) getEventsSuccess,
  }) {
    return getEventsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetEventsLoading value)? getEventsLoading,
    TResult? Function(GetEventsError value)? getEventsError,
    TResult? Function(GetEventsSuccess value)? getEventsSuccess,
  }) {
    return getEventsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetEventsLoading value)? getEventsLoading,
    TResult Function(GetEventsError value)? getEventsError,
    TResult Function(GetEventsSuccess value)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (getEventsLoading != null) {
      return getEventsLoading(this);
    }
    return orElse();
  }
}

abstract class GetEventsLoading implements EventsState {
  const factory GetEventsLoading() = _$GetEventsLoadingImpl;
}

/// @nodoc
abstract class _$$GetEventsErrorImplCopyWith<$Res> {
  factory _$$GetEventsErrorImplCopyWith(_$GetEventsErrorImpl value,
          $Res Function(_$GetEventsErrorImpl) then) =
      __$$GetEventsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetEventsErrorImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$GetEventsErrorImpl>
    implements _$$GetEventsErrorImplCopyWith<$Res> {
  __$$GetEventsErrorImplCopyWithImpl(
      _$GetEventsErrorImpl _value, $Res Function(_$GetEventsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetEventsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEventsErrorImpl implements GetEventsError {
  const _$GetEventsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventsState.getEventsError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsErrorImplCopyWith<_$GetEventsErrorImpl> get copyWith =>
      __$$GetEventsErrorImplCopyWithImpl<_$GetEventsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEventsLoading,
    required TResult Function(String message) getEventsError,
    required TResult Function(List<Event> events) getEventsSuccess,
  }) {
    return getEventsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEventsLoading,
    TResult? Function(String message)? getEventsError,
    TResult? Function(List<Event> events)? getEventsSuccess,
  }) {
    return getEventsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEventsLoading,
    TResult Function(String message)? getEventsError,
    TResult Function(List<Event> events)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (getEventsError != null) {
      return getEventsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetEventsLoading value) getEventsLoading,
    required TResult Function(GetEventsError value) getEventsError,
    required TResult Function(GetEventsSuccess value) getEventsSuccess,
  }) {
    return getEventsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetEventsLoading value)? getEventsLoading,
    TResult? Function(GetEventsError value)? getEventsError,
    TResult? Function(GetEventsSuccess value)? getEventsSuccess,
  }) {
    return getEventsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetEventsLoading value)? getEventsLoading,
    TResult Function(GetEventsError value)? getEventsError,
    TResult Function(GetEventsSuccess value)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (getEventsError != null) {
      return getEventsError(this);
    }
    return orElse();
  }
}

abstract class GetEventsError implements EventsState {
  const factory GetEventsError(final String message) = _$GetEventsErrorImpl;

  String get message;

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventsErrorImplCopyWith<_$GetEventsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEventsSuccessImplCopyWith<$Res> {
  factory _$$GetEventsSuccessImplCopyWith(_$GetEventsSuccessImpl value,
          $Res Function(_$GetEventsSuccessImpl) then) =
      __$$GetEventsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$GetEventsSuccessImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$GetEventsSuccessImpl>
    implements _$$GetEventsSuccessImplCopyWith<$Res> {
  __$$GetEventsSuccessImplCopyWithImpl(_$GetEventsSuccessImpl _value,
      $Res Function(_$GetEventsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$GetEventsSuccessImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$GetEventsSuccessImpl implements GetEventsSuccess {
  const _$GetEventsSuccessImpl(final List<Event> events) : _events = events;

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsState.getEventsSuccess(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsSuccessImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsSuccessImplCopyWith<_$GetEventsSuccessImpl> get copyWith =>
      __$$GetEventsSuccessImplCopyWithImpl<_$GetEventsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEventsLoading,
    required TResult Function(String message) getEventsError,
    required TResult Function(List<Event> events) getEventsSuccess,
  }) {
    return getEventsSuccess(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEventsLoading,
    TResult? Function(String message)? getEventsError,
    TResult? Function(List<Event> events)? getEventsSuccess,
  }) {
    return getEventsSuccess?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEventsLoading,
    TResult Function(String message)? getEventsError,
    TResult Function(List<Event> events)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (getEventsSuccess != null) {
      return getEventsSuccess(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetEventsLoading value) getEventsLoading,
    required TResult Function(GetEventsError value) getEventsError,
    required TResult Function(GetEventsSuccess value) getEventsSuccess,
  }) {
    return getEventsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetEventsLoading value)? getEventsLoading,
    TResult? Function(GetEventsError value)? getEventsError,
    TResult? Function(GetEventsSuccess value)? getEventsSuccess,
  }) {
    return getEventsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetEventsLoading value)? getEventsLoading,
    TResult Function(GetEventsError value)? getEventsError,
    TResult Function(GetEventsSuccess value)? getEventsSuccess,
    required TResult orElse(),
  }) {
    if (getEventsSuccess != null) {
      return getEventsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetEventsSuccess implements EventsState {
  const factory GetEventsSuccess(final List<Event> events) =
      _$GetEventsSuccessImpl;

  List<Event> get events;

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventsSuccessImplCopyWith<_$GetEventsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
