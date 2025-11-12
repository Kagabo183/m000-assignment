// Requirement 6: Test integer operations
test integer_addition() {
  1 + 1 == 2
}

// Requirement 6: Test boolean operations
test boolean_logic() {
  (True && !False) == True
}

// Requirement 6: Test comparison operations
test comparison_greater_than() {
  100 > 50
}

// Requirement 5: Include a test with a trace message
test with_trace() {
  trace("This is my trace message!", True)
}

// Requirement 4: A 5th passing test (integer subtraction)
test integer_subtraction() {
  10 - 4 == 6
}

// Requirement 4: A 6th passing test (comparison less/equal)
test comparison_lte() {
  5 <= 5
}