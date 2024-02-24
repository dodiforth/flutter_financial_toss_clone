import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

import 'banks_dummy.dart';

final bankAccountShinhan1 = BankAccount(
  bankShinhan,
  3000000, //balance
  accountTypeName: '신한 주거래 우대통장(저축예금)', //accountTypeName nullable
);

final bankAccountShinhan2 = BankAccount(
  bankShinhan,
  1000000, //balance
  accountTypeName: '저축예금', //accountTypeName nullable
);

final bankAccountShinhan3 = BankAccount(
  bankShinhan,
  5000000, //balance
  accountTypeName: '저축예금', //accountTypeName nullable
);

final bankAccountTtoss = BankAccount(
  bankTtoss,
  1000000, //balance
);

final bankAccountKakao = BankAccount(
  bankKakao,
  2000000, //balance
  accountTypeName: '입출금통장'
);

main() {
  print(bankAccounts[0].accountTypeName);
}

final List<BankAccount>bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountTtoss,
  bankAccountKakao,
];