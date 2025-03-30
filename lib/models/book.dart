// model ma field haru banaaunu paryo, from the book_data in data directory

class Book{

  final String title;
  final String detail;
  final String image;
  final String rating;
  final String genre;

  Book({
    required this.title,
    required this.detail,
    required this.image,
    required this.rating,
    required this.genre});

  factory Book.fromJson(Map<String, dynamic> json){
    return Book(
        title: json['title'],
        detail: json['detail'],
        image: json['image'],
        rating: json['rating'],
        genre: json['genre']);
  }
}





