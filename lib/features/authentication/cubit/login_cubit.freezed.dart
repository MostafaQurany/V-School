// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
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
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginSuccessImpl implements LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginState {
  const factory LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loginError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return loginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError(final String message) = _$LoginErrorImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordLoadingImplCopyWith<$Res> {
  factory _$$ForgotPasswordLoadingImplCopyWith(
          _$ForgotPasswordLoadingImpl value,
          $Res Function(_$ForgotPasswordLoadingImpl) then) =
      __$$ForgotPasswordLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ForgotPasswordLoadingImpl>
    implements _$$ForgotPasswordLoadingImplCopyWith<$Res> {
  __$$ForgotPasswordLoadingImplCopyWithImpl(_$ForgotPasswordLoadingImpl _value,
      $Res Function(_$ForgotPasswordLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordLoadingImpl implements ForgotPasswordLoading {
  const _$ForgotPasswordLoadingImpl();

  @override
  String toString() {
    return 'LoginState.forgotPasswordLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return forgotPasswordLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return forgotPasswordLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (forgotPasswordLoading != null) {
      return forgotPasswordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return forgotPasswordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return forgotPasswordLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (forgotPasswordLoading != null) {
      return forgotPasswordLoading(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordLoading implements LoginState {
  const factory ForgotPasswordLoading() = _$ForgotPasswordLoadingImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessImplCopyWith(
          _$ForgotPasswordSuccessImpl value,
          $Res Function(_$ForgotPasswordSuccessImpl) then) =
      __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ForgotPasswordSuccessImpl>
    implements _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessImplCopyWithImpl(_$ForgotPasswordSuccessImpl _value,
      $Res Function(_$ForgotPasswordSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordSuccessImpl implements ForgotPasswordSuccess {
  const _$ForgotPasswordSuccessImpl();

  @override
  String toString() {
    return 'LoginState.forgotPasswordSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return forgotPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return forgotPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return forgotPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return forgotPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccess implements LoginState {
  const factory ForgotPasswordSuccess() = _$ForgotPasswordSuccessImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordErrorImplCopyWith<$Res> {
  factory _$$ForgotPasswordErrorImplCopyWith(_$ForgotPasswordErrorImpl value,
          $Res Function(_$ForgotPasswordErrorImpl) then) =
      __$$ForgotPasswordErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForgotPasswordErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ForgotPasswordErrorImpl>
    implements _$$ForgotPasswordErrorImplCopyWith<$Res> {
  __$$ForgotPasswordErrorImplCopyWithImpl(_$ForgotPasswordErrorImpl _value,
      $Res Function(_$ForgotPasswordErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForgotPasswordErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordErrorImpl implements ForgotPasswordError {
  const _$ForgotPasswordErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.forgotPasswordError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordErrorImplCopyWith<_$ForgotPasswordErrorImpl> get copyWith =>
      __$$ForgotPasswordErrorImplCopyWithImpl<_$ForgotPasswordErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordError,
  }) {
    return forgotPasswordError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordError,
  }) {
    return forgotPasswordError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (forgotPasswordError != null) {
      return forgotPasswordError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
  }) {
    return forgotPasswordError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
  }) {
    return forgotPasswordError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    required TResult orElse(),
  }) {
    if (forgotPasswordError != null) {
      return forgotPasswordError(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordError implements LoginState {
  const factory ForgotPasswordError(final String message) =
      _$ForgotPasswordErrorImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordErrorImplCopyWith<_$ForgotPasswordErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
