class levels_model_response {
  late int id;
  late String name;
  late List<Categories> categories;

  @override
  String toString() {
    return 'levels_model_response{id: $id, name: $name, categories: $categories}';
  }

  levels_model_response(
      {required this.id, required this.name, required this.categories});

  levels_model_response.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  late int id;
  late String name;
  late String letter;
  late List<Videos> videos;

  @override
  String toString() {
    return 'Categories{id: $id, name: $name, videos: $videos}';
  }

  Categories({required this.id, required this.name, required this.videos, required this.letter});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    letter = json['letter'];
    if (json['videos'] != null) {
      videos = <Videos>[];
      json['videos'].forEach((v) {
        videos.add(new Videos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.videos != null) {
      data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

  class Videos {
  late String title;
  late int id;
  late String url;
  late String image;

  Videos();

  @override
  String toString() {
    return 'Videos{title: $title, id: $id, url: $url, image: $image';
  }

  Videos.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    url = json['url'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['url'] = this.url;
    data['image'] = this.image;
     return data;
  }
}
