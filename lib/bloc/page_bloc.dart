import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageInitial());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToHomeScreen) {
      yield OnHomeScreen();
    } else if (event is GoToDetailScreen) {
      yield OnDetailScreen();
    } else if (event is GoToAllPage) {
      yield OnAllPage();
    } else if (event is GoToUiUxPage) {
      yield OnUiUxPage();
    } else if (event is GoTo3DAnimationPage) {
      yield On3DAnimationPage();
    } else if (event is GoToMobilePage) {
      yield OnMobilePage();
    }
  }
}
