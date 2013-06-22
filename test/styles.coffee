assert = assert ? require 'assert'

if not Brauhaus?
    Brauhaus = require 'brauhaus'
    require '../lib/brauhaus-styles'

describe 'Style', ->
    it 'Should get a list of categories', ->
        assert.ok Brauhaus.getStyleCategories()

    it 'Should get a list of styles for a category', ->
        assert.ok Brauhaus.getStyles 'India Pale Ale'

    it 'Should supply style category information on a style object', ->
        style = Brauhaus.getStyle 'India Pale Ale', 'American IPA'
        assert.equal style.category, 'India Pale Ale'
  
    it 'Should supply style name information on a style object', ->
        style = Brauhaus.getStyle 'Light Hybrid Beer', 'Kölsch'
        assert.equal style.name, 'Kölsch'

    it 'Should supply style ranges on a style object', ->
        style = Brauhaus.getStyle 'Stout', 'Dry Stout'
        assert.equal style.gu[0], 1.036
        assert.equal style.gu[1], 1.050
        assert.equal style.ibu[0], 30
        assert.equal style.ibu[1], 45
        assert.equal style.abv[0], 4
        assert.equal style.abv[1], 5
