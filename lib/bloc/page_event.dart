part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GoToHomeScreen extends PageEvent {}

class GoToDetailScreen extends PageEvent {}

class GoToAllPage extends PageEvent {}

class GoToUiUxPage extends PageEvent {}

class GoTo3DAnimationPage extends PageEvent {}

class GoToMobilePage extends PageEvent {}
