import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_controller.g.dart';

@riverpod
class TodoController extends _$TodoController {
  @override
  FutureOr<String> build() async {

    return getData();

  }

  Future<String> getData() async{

    // state upto 3 seconds is async loading and after 3 secoinds the state is asunc data
    await Future.delayed(Duration(seconds: 3));
    return 'data response';
  }

  Future<void> changeData() async{
    state = AsyncLoading();
    await Future.delayed(Duration(seconds: 4));
    state = AsyncData('change data success');
  }


}
