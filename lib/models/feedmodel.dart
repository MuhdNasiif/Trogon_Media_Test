// To parse this JSON data, do
//
//     final feedModel = feedModelFromJson(jsonString);

import 'dart:convert';

FeedModel feedModelFromJson(String str) => FeedModel.fromJson(json.decode(str));

String feedModelToJson(FeedModel data) => json.encode(data.toJson());

class FeedModel {
    int? status;
    String? message;
    List<Datum>? data;

    FeedModel({
        this.status,
        this.message,
        this.data,
    });

    factory FeedModel.fromJson(Map<String, dynamic> json) => FeedModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    String? feedId;
    String? title;
    String? content;
    String? image;
    String? categoryId;
    dynamic courseId;
    FileType? fileType;
    String? videoUrl;
    String? thumbnail;
    DateTime? updatedOn;
    Category? category;
    String? file;
    String? videoThumbnail;
    int? isBookmarked;
    int? isLiked;
    String? date;
    int? likeCount;

    Datum({
        this.feedId,
        this.title,
        this.content,
        this.image,
        this.categoryId,
        this.courseId,
        this.fileType,
        this.videoUrl,
        this.thumbnail,
        this.updatedOn,
        this.category,
        this.file,
        this.videoThumbnail,
        this.isBookmarked,
        this.isLiked,
        this.date,
        this.likeCount,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        feedId: json["feed_id"],
        title: json["title"],
        content: json["content"],
        image: json["image"],
        categoryId: json["category_id"],
        courseId: json["course_id"],
        fileType: fileTypeValues.map[json["file_type"]]!,
        videoUrl: json["video_url"],
        thumbnail: json["thumbnail"],
        updatedOn: json["updated_on"] == null ? null : DateTime.parse(json["updated_on"]),
        category: categoryValues.map[json["category"]]!,
        file: json["file"],
        videoThumbnail: json["video_thumbnail"],
        isBookmarked: json["is_bookmarked"],
        isLiked: json["is_liked"],
        date: json["date"],
        likeCount: json["like_count"],
    );

    Map<String, dynamic> toJson() => {
        "feed_id": feedId,
        "title": title,
        "content": content,
        "image": image,
        "category_id": categoryId,
        "course_id": courseId,
        "file_type": fileTypeValues.reverse[fileType],
        "video_url": videoUrl,
        "thumbnail": thumbnail,
        "updated_on": updatedOn?.toIso8601String(),
        "category": categoryValues.reverse[category],
        "file": file,
        "video_thumbnail": videoThumbnail,
        "is_bookmarked": isBookmarked,
        "is_liked": isLiked,
        "date": date,
        "like_count": likeCount,
    };
}

enum Category {
    EXAMS,
    NEET_EXAM_2023
}

final categoryValues = EnumValues({
    "Exams": Category.EXAMS,
    "NEET EXAM 2023": Category.NEET_EXAM_2023
});

enum FileType {
    IMAGE
}

final fileTypeValues = EnumValues({
    "image": FileType.IMAGE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
