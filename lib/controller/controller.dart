import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store{

  @observable
  String decimal = "0";

  @action
  void convertNumber(String binary){
    if(binary.isEmpty){
      this.decimal = "0";
      return;
    }

    int binaryNumber = int.tryParse(binary, radix: 2);

    if(binaryNumber == null){
      return;
    }

    this.decimal = binaryNumber.toRadixString(10);
  }

}