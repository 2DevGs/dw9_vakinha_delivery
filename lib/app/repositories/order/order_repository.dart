import 'package:dw9_vakinha_delivery/app/dto/order_dto.dart';

import '../../models/payment_type_model.dart';

abstract interface class OrderRepository {

  Future<List<PaymentTypeModel>> getAllPaymentsTypes();

  Future<void> saveOrder(OrderDto order);

}