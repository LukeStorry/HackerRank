-- Create an array of n integers


fn 0 = []
fn n = n : fn (n-1)
