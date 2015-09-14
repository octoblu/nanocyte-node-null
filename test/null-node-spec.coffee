NullNode = require '../src/null-node'
describe 'OctoModel', ->
  it 'should exist', ->
    expect(NullNode).to.exist

  describe 'when constructed', ->
    beforeEach ->
      @sut = new NullNode

    it 'should exist', ->
      expect(@sut).to.exist

    it 'should have an onMessage function', ->
      expect(@sut.onMessage).to.exist
