# Enter your code here. Read input from STDIN. Print output to STDOUT
input <- suppressWarnings(file("stdin"))
open(input)
num_testcases = as.numeric(readLines(input, n = 1))
for(i in 1:num_testcases) 
{
    num_tc <- readLines(input, n = 1)
    coords <- strsplit(num_tc, " ")[[1]]
    Px <- as.numeric(coords[1])
    Py <- as.numeric(coords[2])
    Qx <- as.numeric(coords[3])
    Qy <- as.numeric(coords[4])
    Rx = (2*Qx - Px)
    Ry = (2*Qy - Py)
    write(c(Rx, Ry), stdout())
}
close(input)


