require 'test_helper'

class ProjectTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_task = project_tasks(:one)
  end

  test "should get index" do
    get project_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_project_task_url
    assert_response :success
  end

  test "should create project_task" do
    assert_difference('ProjectTask.count') do
      post project_tasks_url, params: { project_task: { approved_by_admin: @project_task.approved_by_admin, approved_by_pto: @project_task.approved_by_pto, project_id: @project_task.project_id, task_description: @project_task.task_description, task_title: @project_task.task_title, user_id: @project_task.user_id } }
    end

    assert_redirected_to project_task_url(ProjectTask.last)
  end

  test "should show project_task" do
    get project_task_url(@project_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_task_url(@project_task)
    assert_response :success
  end

  test "should update project_task" do
    patch project_task_url(@project_task), params: { project_task: { approved_by_admin: @project_task.approved_by_admin, approved_by_pto: @project_task.approved_by_pto, project_id: @project_task.project_id, task_description: @project_task.task_description, task_title: @project_task.task_title, user_id: @project_task.user_id } }
    assert_redirected_to project_task_url(@project_task)
  end

  test "should destroy project_task" do
    assert_difference('ProjectTask.count', -1) do
      delete project_task_url(@project_task)
    end

    assert_redirected_to project_tasks_url
  end
end
