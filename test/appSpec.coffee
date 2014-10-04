describe 'martenseedApp', ->  
  beforeEach module('martenseedApp')
  beforeEach ->
    console.log 'running a test.'

  it 'should run tests', ->
    expect(1).toEqual(1)