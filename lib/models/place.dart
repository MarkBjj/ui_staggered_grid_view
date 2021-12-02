class Place {
  String title;
  String subTitle;
  String imgUrl;
  double height;

  Place(this.title, this.subTitle, this.imgUrl, this.height);

  static List<Place> getPlaces() {
    return [
      Place("Bangkok", "Thailand", "lib/assets/images/bangkokP.jpg", 200),
      Place("Shanghai", "China", "lib/assets/images/shanghaiP.jpg", 200),
      Place("Rio De Janeiro", "Brazil", "lib/assets/images/rio-de-janeiroL.jpg",
          100),
      Place("Taipei", "Taiwan", "lib/assets/images/taipeiP.jpg", 200),
      Place("Saigon", "Vietnam", "lib/assets/images/saigonP.jpg", 100),
      Place("Hong Kong", "China", "lib/assets/images/hong-kongP.jpg", 200),
      Place("New York", "USA", "lib/assets/images/new-yorkL.jpg", 200),
      Place("Vancouver", "Canada", "lib/assets/images/vancouverL.jpg", 200),
      Place("Singapore", "Singapore", "lib/assets/images/singaporeP.jpg", 200),
      Place("Bangkok", "Thailand", "lib/assets/images/bangkokL.jpg", 100),
      Place("Shanghai", "China", "lib/assets/images/shanghaiL.jpg", 100),
      Place("Rio De Janeiro", "Brazil", "lib/assets/images/rio-de-janeiroP.jpg",
          100),
      Place("Taipei", "Taiwan", "lib/assets/images/taipeiL.jpg", 200),
      Place("Hong Kong", "China", "lib/assets/images/hong-kongL.jpg", 200),
      Place("Saigon", "Vietnam", "lib/assets/images/saigonL.jpg", 100),
    ];
  }
}
