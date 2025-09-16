import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/networking/api_result.dart';
import 'package:islami_app/features/surah_details/data/repos/sura_details_repo.dart';
import 'package:islami_app/features/surah_details/logic/cubit/sura_details_state.dart';

class SuraDetailsCubit extends Cubit<SuraDetailsState> {
  final SuraDetailsRepo suraDetailsRepo;
  SuraDetailsCubit(this.suraDetailsRepo)
    : super(const SuraDetailsState.initial());

  void getSuraDetailsByNumber(int number) async {
    emit(const SuraDetailsState.suraDetailsStateLoading());

    final response = await suraDetailsRepo.getSuraDetailsByNumber(number);
    response.when(
      success: (suraDetailsResponseModel) {
        emit(
          SuraDetailsState.suraDetailsStateSuccess(suraDetailsResponseModel),
        );
      },
      failure: (apiErrorModel) {
        emit(SuraDetailsState.suraDetailsStateError(apiErrorModel));
      },
    );
  }
}
