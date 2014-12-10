describe 'Task instance', ->
    task1 = task2 = null
    it 'should have a name', ->
        task1 = 'feed the cat'
        task1.should.equal 'feed the cat'
