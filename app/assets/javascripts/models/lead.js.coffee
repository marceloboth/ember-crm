App.Model = DS.Model.extend
  fistName: DS.attr('string')
  lastName: DS.attr('string')
  email: DS.attr('string')
  phone: DS.attr('string')
  status: DS.attr('string', default: 'new')
  note: DS.attr('string')
