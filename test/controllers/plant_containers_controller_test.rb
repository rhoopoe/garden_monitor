require "test_helper"

class PlantContainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_container = plant_containers(:one)
  end

  test "should get index" do
    get plant_containers_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_container_url
    assert_response :success
  end

  test "should create plant_container" do
    assert_difference("PlantContainer.count") do
      post plant_containers_url, params: { plant_container: {  } }
    end

    assert_redirected_to plant_container_url(PlantContainer.last)
  end

  test "should show plant_container" do
    get plant_container_url(@plant_container)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_container_url(@plant_container)
    assert_response :success
  end

  test "should update plant_container" do
    patch plant_container_url(@plant_container), params: { plant_container: {  } }
    assert_redirected_to plant_container_url(@plant_container)
  end

  test "should destroy plant_container" do
    assert_difference("PlantContainer.count", -1) do
      delete plant_container_url(@plant_container)
    end

    assert_redirected_to plant_containers_url
  end
end
