class Post {
  Meta meta;
  String sId;
  String title;
  String summary;
  String category;
  String createDate;

  Post(
      {this.meta,
      this.sId,
      this.title,
      this.summary,
      this.category,
      this.createDate}) {
    meta = new Meta();
    meta.images = new Images();
  }

  Post.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    sId = json['_id'];
    title = json['title'];
    summary = json['summary'];
    category = json['category'];
    createDate = json['createDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['summary'] = this.summary;
    data['category'] = this.category;
    data['createDate'] = this.createDate;
    return data;
  }
}

class Meta {
  Images images;
  String description;
  String keywords;
  String url;

  Meta({this.images, this.description, this.keywords, this.url});

  Meta.fromJson(Map<String, dynamic> json) {
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    description = json['description'];
    keywords = json['keywords'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.images != null) {
      data['images'] = this.images.toJson();
    }
    data['description'] = this.description;
    data['keywords'] = this.keywords;
    data['url'] = this.url;
    return data;
  }
}

class Images {
  String post;
  String social;

  Images({this.post, this.social});

  Images.fromJson(Map<String, dynamic> json) {
    post = json['post'];
    social = json['social'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['post'] = this.post;
    data['social'] = this.social;
    return data;
  }
}
