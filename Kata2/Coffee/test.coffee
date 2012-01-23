#!/usr/bin/env coffee

assert = require 'assert'

do_chop = (chop) ->
    assert.equal(-1, chop(3, []))
    assert.equal(-1, chop(3, [1]))
    assert.equal(0,  chop(1, [1]))
    #
    assert.equal(0,  chop(1, [1, 3, 5]))
    assert.equal(1,  chop(3, [1, 3, 5]))
    assert.equal(2,  chop(5, [1, 3, 5]))
    assert.equal(-1, chop(0, [1, 3, 5]))
    assert.equal(-1, chop(2, [1, 3, 5]))
    assert.equal(-1, chop(4, [1, 3, 5]))
    assert.equal(-1, chop(6, [1, 3, 5]))
    #
    assert.equal(0,  chop(1, [1, 3, 5, 7]))
    assert.equal(1,  chop(3, [1, 3, 5, 7]))
    assert.equal(2,  chop(5, [1, 3, 5, 7]))
    assert.equal(3,  chop(7, [1, 3, 5, 7]))
    assert.equal(-1, chop(0, [1, 3, 5, 7]))
    assert.equal(-1, chop(2, [1, 3, 5, 7]))
    assert.equal(-1, chop(4, [1, 3, 5, 7]))
    assert.equal(-1, chop(6, [1, 3, 5, 7]))
    assert.equal(-1, chop(8, [1, 3, 5, 7]))

for implementation in ['iterative', 'recursive']
    console.log(implementation)
    chop = require("./chop_#{implementation}").chop
    try
        do_chop(chop)
        console.log('^ - works')
    catch e
        console.error(e)
