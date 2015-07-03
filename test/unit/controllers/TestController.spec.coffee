# describe.only "test", (done) ->
#   it "test", (done) ->

#     request(sails.hooks.http.app)
#     .get("/test/index")
#     .end (err, res) ->
#       return done(body) if res.statusCode is 500
#       res.statusCode.should.equal 200

#       res.text.should.be.equal 'Hello, world!'
#       done(err)
TestController = require('../../../api/controllers/TestController')
sinon = require('sinon')
assert = require('assert')
describe 'The TestController', ->
  describe 'when we invoke the index action', ->
    it 'should return hello world message', ->
      send = sinon.spy()
      TestController.index null, 'send': send
      assert send.called
      assert send.calledWith('Hello, world!')
      return
    return
  return
