# Get a list of categories for style information
Brauhaus.getStyleCategories = ->
    categories = []

    for own key, value of Brauhaus.STYLES
        categories.push key

    return categories

# Get a list of styles for a specific category
Brauhaus.getStyles = (category) ->
    styles = []

    for own key, value of Brauhaus.STYLES[category]
        styles.push key

    return styles

# Get a style from a category and name
Brauhaus.getStyle = (category, name) ->
    return Brauhaus.STYLES[category][name]
