import 'package:bloc/bloc.dart';
import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:meta/meta.dart';

part 'feature_box_state.dart';

class FeatureBoxCubit extends Cubit<FeatureBoxState> {
  FeatureBoxCubit() : super(FeatureBoxInitial());
}
