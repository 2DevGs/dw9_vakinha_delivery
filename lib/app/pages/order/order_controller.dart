
import 'package:dw9_vakinha_delivery/app/dto/order_product_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_state.dart';

class OrderController extends Cubit<OrderState> {
  
  OrderController() : super(const OrderState.initial());

  void load(List<OrderProductDto> products) {
    emit(state.copyWith(orderProducts: products));
  }
  
}