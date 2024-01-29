class CardM {
  final String? id;
  final String cardnumber;
  final String expiry;
  final String ccv;
  final String cardholder;

  CardM({this.id,required this.cardnumber,required this.cardholder,required this.expiry,required this.ccv});

  toJson() {
  return{"CardNumber": cardnumber,"Expiry": expiry,"CCV":ccv,"Cardholder":cardholder};
}

}