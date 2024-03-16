part of 'feed_cubit.dart';

@immutable
sealed class FeedState {}

final class FeedInitial extends FeedState {}
class ViewAllFeedData extends FeedState{
 final List<FeedModel> feeds;
 
  
  ViewAllFeedData({required this.feeds, });
}
