import 'package:dw9_vakinha_delivery/app/core/extensions/formatter_extension.dart';
import 'package:dw9_vakinha_delivery/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_vakinha_delivery/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:dw9_vakinha_delivery/app/dto/order_product_dto.dart';

class ShoppingBagWidget extends StatelessWidget {

  final List<OrderProductDto> bag;

  const ShoppingBagWidget({
    super.key,
    required this.bag,
  });

  @override
  Widget build(BuildContext context) {

  final totalBag = bag.fold<double>(0.0, (total, element) => total += element.totalPrice).currencyPTBR;

    return Container(
      width: context.screenWidth,
      height: 80,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Stack(
          children: [
            const Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: AlignmentGeometry.center,
              child: Text(
                'Ver Sacola',
                style: context.textStyles.textExtraBold.copyWith(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                totalBag,
                style: context.textStyles.textExtraBold.copyWith(
                  fontSize: 11,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
