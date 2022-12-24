# First problem description:
# Input is a text file containing a list of numbers and newlines/blank lines.
# Each unit of numbers is separated by a blank line. Find the largest summing unit in the list.

# Approach: 
# 1. Open the text file and read in the contents somehow
# 2. Loop over the list of units and store the largest sum so far

fileHandle = open("adventofcode_input1.txt", "r");

linesArray = readlines(fileHandle);

lineCount = 1
currentSum = 0
largestSum = 0
for currentLine in linesArray
    if currentLine == ""
        global largestSum = max(currentSum, largestSum)
        global currentSum = 0
    else
        lineAmount = parse(Int, currentLine)
        global currentSum += lineAmount
    end
end

print(largestSum)