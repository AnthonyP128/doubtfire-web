angular.module('doubtfire.units.states.tasks.inbox', [])

#
# Task inbox for tasks for tutors to deal with (i.e., tasksForTaskInbox)
#
.config(($stateProvider) ->
  $stateProvider.state 'units/tasks/inbox', {
    parent: 'units/tasks'
    url: '/inbox/{taskKey:any}'
    templateUrl: "units/states/tasks/inbox/inbox.tpl.html"
    controller: "TaskInboxStateCtrl"
    data:
      task: "Task Inbox"
      pageTitle: "_Home_"
      roleWhitelist: ['Tutor', 'Convenor', 'Admin']
   }
)

.controller('TaskInboxStateCtrl', ($scope, Unit) ->
  $scope.taskData.source = Unit.tasksForTaskInbox
)
