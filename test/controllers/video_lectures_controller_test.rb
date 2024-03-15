require "test_helper"

class VideoLecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_lecture = video_lectures(:one)
  end

  test "should get index" do
    get video_lectures_url
    assert_response :success
  end

  test "should get new" do
    get new_video_lecture_url
    assert_response :success
  end

  test "should create video_lecture" do
    assert_difference("VideoLecture.count") do
      post video_lectures_url, params: { video_lecture: { full_video_url: @video_lecture.full_video_url, title: @video_lecture.title, trailer_url: @video_lecture.trailer_url } }
    end

    assert_redirected_to video_lecture_url(VideoLecture.last)
  end

  test "should show video_lecture" do
    get video_lecture_url(@video_lecture)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_lecture_url(@video_lecture)
    assert_response :success
  end

  test "should update video_lecture" do
    patch video_lecture_url(@video_lecture), params: { video_lecture: { full_video_url: @video_lecture.full_video_url, title: @video_lecture.title, trailer_url: @video_lecture.trailer_url } }
    assert_redirected_to video_lecture_url(@video_lecture)
  end

  test "should destroy video_lecture" do
    assert_difference("VideoLecture.count", -1) do
      delete video_lecture_url(@video_lecture)
    end

    assert_redirected_to video_lectures_url
  end
end
