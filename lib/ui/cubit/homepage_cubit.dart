import 'package:flutter_bloc/flutter_bloc.dart';

class HomepageCubit extends Cubit<int> {
  HomepageCubit() : super(0);

  void emit2() {
    int result = 0;

    emit(result);
  }
}
