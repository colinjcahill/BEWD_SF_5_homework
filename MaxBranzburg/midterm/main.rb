# Application name: Mashable Search
# Creator: Max Branzburg
# Date: August 24, 2014

# Description:
# Mashable Search is a simple Mashable news search application.
# It accepts 3 inputs (type, search term, desired # results), 
# makes the appropriate API call depending on story type, and
# produces a list of the stories of the given type that include
# the search term in their bodies, sorted by # of shares and
# limited by the desired # of results or # stories matching the
# search term, whichever is less.  If the desired # of results
# entered is not an integer, the application demands that the
# user enter an integer before executing the search and sort 
# functions.

# =============================================================
# =============================================================

require_relative 'lib/results'

puts "\nWelcome to Mashable Story Search!"

puts "\nPlease enter your search term:"

search_term = gets.chomp

puts "\nWhat would you like to search - New ('n'), Hot ('h'), or Rising ('r') stories?"

desired_type = gets.chomp

puts "\nPlease enter your maximum desired number of results:"

results = Results.new(desired_type, search_term)
results.sort_stories

# =============================================================
# =============================================================

# Known limitations to be addressed:
# 1/ Searches for exact queries in story contents, regardless
#    of adjacent characters.  For example, a query of 'cat'
#    would return a story containing the string 'category'
#    because it includes the query.
# 2/ Does not reject invalid input for search type (e.g., not
#    type other than 'n', 'h', or 'r'). Intentionally used
#    maximum desired number results to demonstrate ability to
#    handle bad input instead.
# 3/ High latency due to broad API call for all stories of the
#    desired type prior to search and sort functions on stored
#    stories.