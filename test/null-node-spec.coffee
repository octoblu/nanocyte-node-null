NullNode = require '../src/null-node'

describe 'Null Node', ->
  it 'should exist', ->
    expect(NullNode).to.exist

  describe 'when constructed', ->
    beforeEach ->
      @sut = new NullNode
      console.log 'NullNode', @sut

    it 'should exist', ->
      expect(@sut).to.exist

    it 'should have an onMessage function', ->
      expect(@sut.onMessage).to.exist

  describe '->onMessage', ->
    describe 'when message is null and not-null is false', ->
      beforeEach ->
        @config = {
          value: null
          not: false
        }
        @data = {}
        @callback = sinon.spy()
        @message = {
          hi: 'whatsup'
        }
        @sut = new NullNode(@config, @data)
        @sut.onMessage(@message, @callback)
      it 'should call the callback with the null message', ->
        expect(@callback).to.have.been.calledWith(null, @message)

    describe 'when message is not-null and not-null is false', ->
      beforeEach ->
        @config = {
          value: 15
          not: false
        }
        @data = {}
        @callback = sinon.spy()
        @message = {
          hi: 'whatsup'
        }
        @sut = new NullNode(@config, @data)
        @sut.onMessage(@message, @callback)
      it 'should call the callback with null and no message', ->
        expect(@callback).to.have.been.calledWith(null)
        expect(@callback).to.not.have.been.calledWith(@message)

    describe 'when message is null and not-null is true', ->
      beforeEach ->
        @config = {
          value: null
          not: true
        }
        @data = {}
        @callback = sinon.spy()
        @message = {
          hi: 'whatsup'
        }
        @sut = new NullNode(@config, @data)
        @sut.onMessage(@message, @callback)
      it 'should call the callback with null and no message', ->
        expect(@callback).to.have.been.calledWith(null)
        expect(@callback).to.not.have.been.calledWith(@message)

    describe 'when message is not-null and not-null is true', ->
      beforeEach ->
        @config = {
          value: 15
          not: true
        }
        @data = {}
        @callback = sinon.spy()
        @message = {
          hi: 'whatsup'
        }
        @sut = new NullNode(@config, @data)
        @sut.onMessage(@message, @callback)
      it 'should call the callback with the null message', ->
        expect(@callback).to.have.been.calledWith(null, @message)
