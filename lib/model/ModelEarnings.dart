class ModelEarnings{
  String provider;
  String type;
  String time;
  String coins;

  ModelEarnings({
    this.provider,
    this.time,
    this.coins,
    this.type,
});
}


List<ModelEarnings> earnings = [
  ModelEarnings(
    provider : "TheoremReach",
    type : "Survey",
    time : "10 hoursa ago",
    coins : "2.00",
  ),
  ModelEarnings(
    provider : "TheoremReach",
    type : "Survey",
    time : "12 hoursa ago",
    coins : "2.00",
  ),
  ModelEarnings(
    provider : "TheoremReach",
    type : "Survey",
    time : "18 hoursa ago",
    coins : "2.00",
  )
];