class ModelWithdrawals{
  String name;
  String code;
  String time;
  String coins;

  ModelWithdrawals({
    this.name,
    this.time,
    this.coins,
    this.code,
  });
}

List<ModelWithdrawals> withdrawals = [
  ModelWithdrawals(
    name : "Sticker | Noble",
    code : "Code Not Required",
    time : "7 days ago",
    coins : "42.00",
  ),
  ModelWithdrawals(
    name : "Chroma Case",
    code : "Code Not Required",
    time : "9 days ago",
    coins : "12.00",
  ),
  ModelWithdrawals(
    name : "M4A4 | Buzz Kill",
    code : "Code Not Required",
    time : "15 days ago",
    coins : "892.00",
  )
];