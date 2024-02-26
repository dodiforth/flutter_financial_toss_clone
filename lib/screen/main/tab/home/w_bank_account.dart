import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;
  const BankAccountWidget({required this.account, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? "${account.bank.name}통장")
                  .text
                  .white
                  .size(12)
                  .make(),
              ("${account.balance}원").text.white.bold.size(18).make(),
            ],
          ).pSymmetric(h: 20, v: 10),
        )
      ],
    );
  }
}
