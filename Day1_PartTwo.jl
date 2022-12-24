# First problem description, part two!
# Input is a text file containing a list of numbers and newlines/blank lines.
# Each unit of numbers is separated by a blank line. Find the largest THREE summing units in the list.

fileHandle = open("adventofcode_input1.txt", "r");

linesArray = readlines(fileHandle);

# Initialize linecount and sum variables
lineCount = 1
currentSum = 0
largestSums = zeros(Int, 1, 3)

# Loop over lines
for currentLine in linesArray
    if currentLine == ""
        for sumIndex in eachindex(largestSums)
            # Always overwrite the smallest number
            if currentSum > minimum(largestSums) && largestSums[sumIndex] == minimum(largestSums)
                global largestSums[sumIndex] = currentSum
                global currentSum = 0
            end
        end
        currentSum = 0
    else
        lineAmount = parse(Int, currentLine)
        global currentSum += lineAmount
    end
end

totalSum = sum(largestSums)
print(totalSum)