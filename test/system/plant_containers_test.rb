require "application_system_test_case"

class PlantContainersTest < ApplicationSystemTestCase
  setup do
    @plant_container = plant_containers(:one)
  end

  test "visiting the index" do
    visit plant_containers_url
    assert_selector "h1", text: "Plant containers"
  end

  test "should create plant container" do
    visit plant_containers_url
    click_on "New plant container"

    click_on "Create Plant container"

    assert_text "Plant container was successfully created"
    click_on "Back"
  end

  test "should update Plant container" do
    visit plant_container_url(@plant_container)
    click_on "Edit this plant container", match: :first

    click_on "Update Plant container"

    assert_text "Plant container was successfully updated"
    click_on "Back"
  end

  test "should destroy Plant container" do
    visit plant_container_url(@plant_container)
    click_on "Destroy this plant container", match: :first

    assert_text "Plant container was successfully destroyed"
  end
end
