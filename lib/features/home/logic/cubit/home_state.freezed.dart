// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SurahsLoading value)?  surahsLoading,TResult Function( SurahsSuccess value)?  surahsSuccess,TResult Function( SurahsError value)?  surahsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SurahsLoading() when surahsLoading != null:
return surahsLoading(_that);case SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that);case SurahsError() when surahsError != null:
return surahsError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SurahsLoading value)  surahsLoading,required TResult Function( SurahsSuccess value)  surahsSuccess,required TResult Function( SurahsError value)  surahsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SurahsLoading():
return surahsLoading(_that);case SurahsSuccess():
return surahsSuccess(_that);case SurahsError():
return surahsError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SurahsLoading value)?  surahsLoading,TResult? Function( SurahsSuccess value)?  surahsSuccess,TResult? Function( SurahsError value)?  surahsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SurahsLoading() when surahsLoading != null:
return surahsLoading(_that);case SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that);case SurahsError() when surahsError != null:
return surahsError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  surahsLoading,TResult Function( SurahsResponseModel surahsResponseModel)?  surahsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  surahsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SurahsLoading() when surahsLoading != null:
return surahsLoading();case SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that.surahsResponseModel);case SurahsError() when surahsError != null:
return surahsError(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  surahsLoading,required TResult Function( SurahsResponseModel surahsResponseModel)  surahsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  surahsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SurahsLoading():
return surahsLoading();case SurahsSuccess():
return surahsSuccess(_that.surahsResponseModel);case SurahsError():
return surahsError(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  surahsLoading,TResult? Function( SurahsResponseModel surahsResponseModel)?  surahsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  surahsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SurahsLoading() when surahsLoading != null:
return surahsLoading();case SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that.surahsResponseModel);case SurahsError() when surahsError != null:
return surahsError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SurahsLoading implements HomeState {
  const SurahsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.surahsLoading()';
}


}




/// @nodoc


class SurahsSuccess implements HomeState {
  const SurahsSuccess(this.surahsResponseModel);
  

 final  SurahsResponseModel surahsResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahsSuccessCopyWith<SurahsSuccess> get copyWith => _$SurahsSuccessCopyWithImpl<SurahsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahsSuccess&&(identical(other.surahsResponseModel, surahsResponseModel) || other.surahsResponseModel == surahsResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,surahsResponseModel);

@override
String toString() {
  return 'HomeState.surahsSuccess(surahsResponseModel: $surahsResponseModel)';
}


}

/// @nodoc
abstract mixin class $SurahsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SurahsSuccessCopyWith(SurahsSuccess value, $Res Function(SurahsSuccess) _then) = _$SurahsSuccessCopyWithImpl;
@useResult
$Res call({
 SurahsResponseModel surahsResponseModel
});




}
/// @nodoc
class _$SurahsSuccessCopyWithImpl<$Res>
    implements $SurahsSuccessCopyWith<$Res> {
  _$SurahsSuccessCopyWithImpl(this._self, this._then);

  final SurahsSuccess _self;
  final $Res Function(SurahsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? surahsResponseModel = null,}) {
  return _then(SurahsSuccess(
null == surahsResponseModel ? _self.surahsResponseModel : surahsResponseModel // ignore: cast_nullable_to_non_nullable
as SurahsResponseModel,
  ));
}


}

/// @nodoc


class SurahsError implements HomeState {
  const SurahsError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahsErrorCopyWith<SurahsError> get copyWith => _$SurahsErrorCopyWithImpl<SurahsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahsError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState.surahsError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SurahsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SurahsErrorCopyWith(SurahsError value, $Res Function(SurahsError) _then) = _$SurahsErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SurahsErrorCopyWithImpl<$Res>
    implements $SurahsErrorCopyWith<$Res> {
  _$SurahsErrorCopyWithImpl(this._self, this._then);

  final SurahsError _self;
  final $Res Function(SurahsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SurahsError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
