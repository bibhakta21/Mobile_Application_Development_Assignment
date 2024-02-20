class BookModel {
  String? id;
  String? title;
  String? description;
  String? rating;
  int? pages;
  String? language;
  String? audioLen;
  String? author;
  String? aboutAuthor;
  String? bookurl;
  String? audioUrl;
  String? category;
  String? coverUrl;
  int? price;
  String? numberofRating;
  String? genre; // New field for genre

  BookModel({
    this.id,
    this.title,
    this.description,
    this.rating,
    this.pages,
    this.language,
    this.audioLen,
    this.author,
    this.aboutAuthor,
    this.bookurl,
    this.audioUrl,
    this.category,
    this.price,
    this.coverUrl,
    this.numberofRating,
    this.genre, // Initialize genre in the constructor
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["rating"] is String) {
      rating = json["rating"];
    }
    if (json["pages"] is int) {
      pages = json["pages"];
    }
    if (json["language"] is String) {
      language = json["language"];
    }
    if (json["audioLen"] is String) {
      audioLen = json["audioLen"];
    }
    if (json["author"] is String) {
      author = json["author"];
    }
    if (json["aboutAuthor"] is String) {
      aboutAuthor = json["aboutAuthor"];
    }
    if (json["bookurl"] is String) {
      bookurl = json["bookurl"];
    }
    if (json["audioUrl"] is String) {
      audioUrl = json["audioUrl"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["coverUrl"] is String) {
      coverUrl = json["coverUrl"];
    }
    if (json["price"] is int) {
      price = json["price"];
    }
    if (json["numberofRating"] is int) {
      numberofRating = json["numberofRating"];
    }
    if (json["genre"] is String) {
      genre = json["genre"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["rating"] = rating;
    _data["pages"] = pages;
    _data["language"] = language;
    _data["audioLen"] = audioLen;
    _data["author"] = author;
    _data["aboutAuthor"] = aboutAuthor;
    _data["bookurl"] = bookurl;
    _data["audioUrl"] = audioUrl;
    _data["category"] = category;
    _data["coverUrl"] = coverUrl;
    _data["price"] = price;
    _data["numberofRating"] = numberofRating;
    _data["genre"] = genre;
    return _data;
  }

  // Getters
  String? get getId => id;
  String? get getTitle => title;
  String? get getDescription => description;
  String? get getRating => rating;
  int? get getPages => pages;
  String? get getLanguage => language;
  String? get getAudioLen => audioLen;
  String? get getAuthor => author;
  String? get getAboutAuthor => aboutAuthor;
  String? get getBookUrl => bookurl;
  String? get getAudioUrl => audioUrl;
  String? get getCategory => category;
  String? get getCoverUrl => coverUrl;
  int? get getPrice => price;
  String? get getNumberofRating => numberofRating;
  String? get getGenre => genre;

  // Setters
  set setId(String? value) => id = value;
  set setTitle(String? value) => title = value;
  set setDescription(String? value) => description = value;
  set setRating(String? value) => rating = value;
  set setPages(int? value) => pages = value;
  set setLanguage(String? value) => language = value;
  set setAudioLen(String? value) => audioLen = value;
  set setAuthor(String? value) => author = value;
  set setAboutAuthor(String? value) => aboutAuthor = value;
  set setBookUrl(String? value) => bookurl = value;
  set setAudioUrl(String? value) => audioUrl = value;
  set setCategory(String? value) => category = value;
  set setCoverUrl(String? value) => coverUrl = value;
  set setPrice(int? value) => price = value;
  set setNumberofRating(String? value) => numberofRating = value;

}
