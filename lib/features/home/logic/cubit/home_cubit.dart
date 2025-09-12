import 'package:bloc/bloc.dart';
import 'package:islami_app/core/networking/api_result.dart';
import 'package:islami_app/features/home/data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  void getAllSurahs() async {
    emit(const HomeState.surahsLoading());
    final response = await homeRepo.getAllSurahs();
    response.when(
      success: (surahsResponseModel) {
        emit(HomeState.surahsSuccess(surahsResponseModel));
      },
      failure: (apiErrorModel) {
        emit(HomeState.surahsError(apiErrorModel));
      },
    );
  }
}
