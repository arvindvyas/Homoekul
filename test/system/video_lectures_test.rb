require "application_system_test_case"

class VideoLecturesTest < ApplicationSystemTestCase
  setup do
    @video_lecture = video_lectures(:one)
  end

  test "visiting the index" do
    visit video_lectures_url
    assert_selector "h1", text: "Video lectures"
  end

  test "should create video lecture" do
    visit video_lectures_url
    click_on "New video lecture"

    fill_in "Full video url", with: @video_lecture.full_video_url
    fill_in "Title", with: @video_lecture.title
    fill_in "Trailer url", with: @video_lecture.trailer_url
    click_on "Create Video lecture"

    assert_text "Video lecture was successfully created"
    click_on "Back"
  end

  test "should update Video lecture" do
    visit video_lecture_url(@video_lecture)
    click_on "Edit this video lecture", match: :first

    fill_in "Full video url", with: @video_lecture.full_video_url
    fill_in "Title", with: @video_lecture.title
    fill_in "Trailer url", with: @video_lecture.trailer_url
    click_on "Update Video lecture"

    assert_text "Video lecture was successfully updated"
    click_on "Back"
  end

  test "should destroy Video lecture" do
    visit video_lecture_url(@video_lecture)
    click_on "Destroy this video lecture", match: :first

    assert_text "Video lecture was successfully destroyed"
  end
end
