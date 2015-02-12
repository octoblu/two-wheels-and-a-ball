Bot = require '../../src/bot'

describe 'Bot', ->
  describe '->toMessage', ->
    describe 'when instantiated with a bearing of 0 and velocity of 0', ->
      beforeEach ->
        @sut = new Bot 0, 0

      it 'should return a message with 1500, 1500', ->
        expect(@sut.toMessage()).to.deep.equal {left: 1500, right: 1500}

    describe 'when instantiated with a bearing of 0 and velocity of 1', ->
      beforeEach ->
        @sut = new Bot 0, 1

      it 'should return a message with 1000, 2000', ->
        expect(@sut.toMessage()).to.deep.equal {left: 1000, right: 2000}


