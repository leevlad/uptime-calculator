require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post :create, incident: { closed_time: @incident.closed_time, contact_people: @incident.contact_people, detection_time: @incident.detection_time, faulted_service: @incident.faulted_service, follow_ups: @incident.follow_ups, hosts: @incident.hosts, incident_time: @incident.incident_time, method_of_detection: @incident.method_of_detection, resolution: @incident.resolution, resolution_time: @incident.resolution_time, severity: @incident.severity, source_of_incident: @incident.source_of_incident, summary: @incident.summary, symptoms: @incident.symptoms, tags: @incident.tags, task_url: @incident.task_url }
    end

    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should show incident" do
    get :show, id: @incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident
    assert_response :success
  end

  test "should update incident" do
    patch :update, id: @incident, incident: { closed_time: @incident.closed_time, contact_people: @incident.contact_people, detection_time: @incident.detection_time, faulted_service: @incident.faulted_service, follow_ups: @incident.follow_ups, hosts: @incident.hosts, incident_time: @incident.incident_time, method_of_detection: @incident.method_of_detection, resolution: @incident.resolution, resolution_time: @incident.resolution_time, severity: @incident.severity, source_of_incident: @incident.source_of_incident, summary: @incident.summary, symptoms: @incident.symptoms, tags: @incident.tags, task_url: @incident.task_url }
    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete :destroy, id: @incident
    end

    assert_redirected_to incidents_path
  end
end
