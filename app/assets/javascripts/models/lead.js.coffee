App.Lead = DS.Model.extend
  firstName: DS.attr('string')
  lastName: DS.attr('string')
  email: DS.attr('string')
  phone: DS.attr('string')
  status: DS.attr('string', default: 'new')
  note: DS.attr('string')

  fullName: ( ->
    @get('firstName') + ' ' + @get('lastName')
  ).property('firstName', 'lastName')


App.Lead.reopenClass
  STATUSES: ["new", "in progress", "closes", "bad"]

  valid: (fields) ->
    fields.firstName and fields.lastName
