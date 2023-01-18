# Initialize variables
max_pandigital <- 0
max_n <- 0

# Iterate through integers
for (i in 1:9999) {
    # Initialize concatenated product
    concat_product <- ""

    # Iterate through n
    for (n in 2:9) {
        # Concatenate product to concatenated product
        concat_product <- paste(concat_product, i*n, sep="")

        # Check if concatenated product is pandigital and greater than current max
        if (nchar(concat_product) == 9 && !any(duplicated(unlist(strsplit(concat_product, "")))) && as.numeric(concat_product) > max_pandigital) {
            max_pandigital <- as.numeric(concat_product)
            max_n <- n
        }
    }
}

# Print result
cat("The largest 9-digit pandigital number is", max_pandigital, "and can be formed as the concatenated product of", i, "and (1, 2, ..., ", max_n, ")", sep=" ")
