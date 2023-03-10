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
  late String mission_number;
  late int id;
  late String url;
  late String mission_name;
  late bool is_watched;
  late String touchstone;

  Videos();

  @override
  String toString() {
    return 'Videos{title: $mission_number, id: $id, url: $url, image: $mission_name, touchstone: $touchstone';
  }

  Videos.fromJson(Map<String, dynamic> json) {
    mission_number = json['mission_number'];
    id = json['id'];
    url = json['url'];
    is_watched = json['is_watched'].runtimeType == List ? false:json['is_watched'];
    mission_name = json['mission_name'];
    touchstone = json['touchstone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mission_number'] = this.mission_number;
    data['id'] = this.id;
    data['is_watched'] = this.is_watched;
    data['url'] = this.url;
    data['mission_name'] = this.mission_name;
    data['touchstone'] = this.touchstone;
     return data;
  }
}
