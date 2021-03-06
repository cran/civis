context("scripts")

test_that('fetch_output_file_ids returns named list of file_ids', {
  mock_output <- list(list(name = 'fake_name', objectId = 1),
                      list(name = 'asdf', objectId = 2))
  with_mock(
    `civis::jobs_get` = function(...)  list(type = 'JobTypes::ContainerDocker'),
    `civis::scripts_list_containers_runs_outputs` = function(...) mock_output,
    expect_equal(fetch_output_file_ids(civis_script(1,1), NULL),
                 list(fake_name = 1, asdf = 2)),
    expect_equal(fetch_output_file_ids(civis_script(1,1), 'fake'),
                 list(fake_name = 1))
  )
})

test_that("fetch_output dispatches correct function", {
  mock_output <- list(list(name = 'fake_name'), list(name = 'asdf'))
  with_mock(
    `civis::jobs_get` = function(...)  list(type = 'JobTypes::ContainerDocker'),
    `civis::scripts_list_containers_runs_outputs` = function(...) mock_output,
    expect_equal(fetch_output(civis_script(1,1)),
                 mock_output),
    expect_equal(fetch_output(civis_script(1,1), regex = 'fake'),
                 mock_output[1])
  )
})

test_that("test civis_script", {
  expect_equal(civis_script(1, 1),
               structure(list(id = 1, run_id = 1), class = 'civis_script'))
  expect_error(civis_script(1:2))
  expect_error(civis_script(1, 1:2))
})

test_that("write_job_output posts", {
  Sys.setenv('CIVIS_JOB_ID' = 1)
  Sys.setenv('CIVIS_RUN_ID' = 2)
  mock_post <- mockery::mock(1)
  mock_job <- list(type = 'JobTypes::ContainerDocker', fromTemplateId = 1)
  val <- with_mock(
    `civis::jobs_get` = function(...) mock_job,
    `write_civis_file` = function(...) 3,
    `civis::scripts_post_custom_runs_outputs` = mock_post,
    write_job_output('asdf'),
    mockery::expect_called(mock_post, 1)
  )
  Sys.unsetenv("CIVIS_JOB_ID" )
  Sys.unsetenv("CIVIS_RUN_ID")
  expect_null(write_job_output('asdf'))
})

test_that("run_template", {
  mock_output <- list(list(name = 'a', objectId = 1))
  mock_post <- mockery::mock(list(id = 1))
  vals <- with_mock(
    `civis::scripts_post_custom` =  mock_post,
    `civis::scripts_post_custom_runs` = function(...) list(id = 1),
    `civis::scripts_get_custom_runs` = function(...) list(state = 'succeeded'),
    `civis::jobs_get` = function(...) list(type = 'JobTypes::ContainerDocker', fromTemplateId = 1),
    `civis::scripts_list_custom_runs_outputs` = function(...) mock_output,
    run_template(1, arguments = list(arg = 1), credential_id = 1)
  )
  expect_equal(vals, list(a = 1))
  mockery::expect_called(mock_post, 1)
  expect_equal(mockery::mock_args(mock_post)[[1]],
               list(1, arguments = list(arg = 1), credential_id = 1))
})

test_that("run_template_with_json", {
  mock_output <- list(list(name = 'a', objectId = 1, objectType = 'JSONValue', value = "{'a':1}"))
  mock_post <- mockery::mock(list(id = 1))
  vals <- with_mock(
    `civis::scripts_post_custom` =  mock_post,
    `civis::scripts_post_custom_runs` = function(...) list(id = 1),
    `civis::scripts_get_custom_runs` = function(...) list(state = 'succeeded'),
    `civis::jobs_get` = function(...) list(type = 'JobTypes::ContainerDocker', fromTemplateId = 1),
    `civis::scripts_list_custom_runs_outputs` = function(...) mock_output,
    run_template(1, arguments = list(arg = 1), credential_id = 1, JSONValue=TRUE)
  )
  expect_equal(vals, "{'a':1}")
  mockery::expect_called(mock_post, 1)
  expect_equal(mockery::mock_args(mock_post)[[1]],
               list(1, arguments = list(arg = 1), credential_id = 1))
})

test_that("run_template_with_no_json_output", {
  mock_output <- list(list(name = 'a', objectId = 1, objectType = 'JSONValue', value = "{'a':1}"),
  	      	      list(name = 'b', objectId = 2, objectType = 'JSONValue', value = "{'b':2}"))
  mock_post <- mockery::mock(list(id = 1))
  vals <- with_mock(
    `civis::scripts_post_custom` =  mock_post,
    `civis::scripts_post_custom_runs` = function(...) list(id = 1),
    `civis::scripts_get_custom_runs` = function(...) list(state = 'succeeded'),
    `civis::jobs_get` = function(...) list(type = 'JobTypes::ContainerDocker', fromTemplateId = 1),
    `civis::scripts_list_custom_runs_outputs` = function(...) mock_output,
    run_template(1, arguments = list(arg = 1), credential_id = 1, JSONValue=TRUE)
  )
  expect_equal(vals, "{'a':1}")
  mockery::expect_called(mock_post, 1)
  expect_equal(mockery::mock_args(mock_post)[[1]],
               list(1, arguments = list(arg = 1), credential_id = 1))
})

test_that("run_template_with_multiple_json_output", {
  mock_output <- list(list(name = 'a', objectId = 1, objectType = 'int'))
  mock_post <- mockery::mock(list(id = 1))
  vals <- with_mock(
    `civis::scripts_post_custom` =  mock_post,
    `civis::scripts_post_custom_runs` = function(...) list(id = 1),
    `civis::scripts_get_custom_runs` = function(...) list(state = 'succeeded'),
    `civis::jobs_get` = function(...) list(type = 'JobTypes::ContainerDocker', fromTemplateId = 1),
    `civis::scripts_list_custom_runs_outputs` = function(...) mock_output,
    run_template(1, arguments = list(arg = 1), credential_id = 1, JSONValue=TRUE)
  )
  expect_equal(vals, NULL)
  mockery::expect_called(mock_post, 1)
  expect_equal(mockery::mock_args(mock_post)[[1]],
               list(1, arguments = list(arg = 1), credential_id = 1))
})

test_that("run_civis", {
  # CivisFuture is tested extensively elsewhere.
  with_mock(
    `civis::civis_platform` = future::sequential,
    expect_equal(run_civis(2 + 2), 4)
  )
})

test_that("script_get_fun works", {
  mock_job <- list(type = 'JobTypes::ContainerDocker')
  expect_equal(get_script_fun(mock_job, 'list', 'outputs'),
               scripts_list_containers_runs_outputs)
  mock_job <- list(type = 'JobTypes::PythonDocker')
  expect_equal(get_script_fun(mock_job, 'list', 'logs'),
               scripts_list_python3_runs_logs)
  mock_job <- list(type = 'JobTypes::ContainerDocker',
                   fromTemplateId = 1)
  expect_equal(get_script_fun(mock_job, 'list', 'outputs'),
               scripts_list_custom_runs_outputs)

  mock_job <- list(type = 'JobTypes::ContainerDocker',
                   fromTemplateId = 1)
  expect_equal(get_script_fun(mock_job, 'post', 'outputs'),
               scripts_post_custom_runs_outputs)

  expect_error(get_script_fun(423, 'list', 'asdf'), 'outputs')
  expect_error(get_script_fun(423, 'asdf', 'outputs'), 'list')
})
