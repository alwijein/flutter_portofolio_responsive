part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class PageInitial extends PageState {}

class OnHomeScreen extends PageState {}

class OnDetailScreen extends PageState {}

class OnAllPage extends PageState {}

class OnUiUxPage extends PageState {}

class On3DAnimationPage extends PageState {}

class OnMobilePage extends PageState {}
