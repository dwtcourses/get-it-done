Template.priorityChooser.onCreated ->
  @.currentPriority = new ReactiveVar 1

Template.priorityChooser.onRendered ->
  if @.data.priority
    @.currentPriority.set Number(@.data.priority)

Template.priorityChooser.helpers
  isSelected: (priority) ->
    priority is Template.instance().currentPriority.get()
  current: ->
    Template.instance().currentPriority.get()

Template.priorityChooser.events
  'click .priority-value': (e, t) ->
    Template.instance().currentPriority.set Number(e.target.dataset.value)