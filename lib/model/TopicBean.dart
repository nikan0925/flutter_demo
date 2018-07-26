import 'dart:convert' show json;


class TopicBean {

  bool success;
  List<Data> data;


  TopicBean.fromParams({this.success, this.data});

  factory TopicBean(jsonStr) =>
      jsonStr is String ? TopicBean.fromJson(json.decode(jsonStr)) : TopicBean
          .fromJson(jsonStr);

  TopicBean.fromJson(jsonRes) {
    success = jsonRes['success'];
    data = [];

    for (var dataItem in jsonRes['data']) {
      data.add(new Data.fromJson(dataItem));
    }
  }

  @override
  String toString() {
    return '{"success": $success,"data": $data}';
  }
}


class Data {

  int reply_count;
  int visit_count;
  bool good;
  bool top;
  String author_id;
  String content;
  String create_at;
  String id;
  String last_reply_at;
  String tab;
  String title;
  Author author;


  Data.fromParams(
      {this.reply_count, this.visit_count, this.good, this.top, this.author_id, this.content, this.create_at, this.id, this.last_reply_at, this.tab, this.title, this.author});

  Data.fromJson(jsonRes) {
    reply_count = jsonRes['reply_count'];
    visit_count = jsonRes['visit_count'];
    good = jsonRes['good'];
    top = jsonRes['top'];
    author_id = jsonRes['author_id'];
    content = jsonRes['content'];
    create_at = jsonRes['create_at'];
    id = jsonRes['id'];
    last_reply_at = jsonRes['last_reply_at'];
    tab = jsonRes['tab'];
    title = jsonRes['title'];
    author = new Author.fromJson(jsonRes['author']);
  }

  @override
  String toString() {
    return '{"reply_count": $reply_count,"visit_count": $visit_count,"good": $good,"top": $top,"author_id": ${author_id !=
        null ? '${json.encode(author_id)}' : 'null'},"content": ${content !=
        null ? '${json.encode(content)}' : 'null'},"create_at": ${create_at !=
        null ? '${json.encode(create_at)}' : 'null'},"id": ${id != null
        ? '${json.encode(id)}'
        : 'null'},"last_reply_at": ${last_reply_at != null ? '${json.encode(
        last_reply_at)}' : 'null'},"tab": ${tab != null
        ? '${json.encode(tab)}'
        : 'null'},"title": ${title != null
        ? '${json.encode(title)}'
        : 'null'},"author": $author}';
  }
}


class Author {

  String avatar_url;
  String loginname;


  Author.fromParams({this.avatar_url, this.loginname});

  Author.fromJson(jsonRes) {
    avatar_url = jsonRes['avatar_url'];
    loginname = jsonRes['loginname'];
  }

  @override
  String toString() {
    return '{"avatar_url": ${avatar_url != null
        ? '${json.encode(avatar_url)}'
        : 'null'},"loginname": ${loginname != null
        ? '${json.encode(loginname)}'
        : 'null'}}';
  }
}

