# Modified from https://stackoverflow.com/questions/18332463/convert-written-number-to-number-in-r

word2num <- function(num){
    one_digits <- list(one=1, two=2, three=3, four=4, five=5,
                       six=6, seven=7, eight=8, nine=9)
    teens <- list(eleven=11, twelve=12, thirteen=13, fourteen=14, fifteen=15,
                  sixteen=16, seventeen=17, eighteen=18, nineteen=19)
    ten_digits <- list(ten=10, twenty=20, thirty=30, forty=40, fifty=50,
                       sixty=60, seventy=70, eighty=80, ninety=90)

    nums <- as.integer(unlist(strsplit(as.character(num), split = "")))
    if(length(nums) > 2) {
        if(length(nums) == 3) {
            if(nums[2] != 1){
                return(
                      paste0(
                        names(one_digits)[which(one_digits==(nums[1]))],
                        "hundred",
                        if(nums[2] > 0 || nums[3] > 0) "and",
                        names(ten_digits)[which(ten_digits==(nums[2]*10))],
                        names(one_digits)[which(one_digits==nums[3])]
                      )
                    )
            } else {
               return(
                      paste0(
                        names(one_digits)[which(one_digits==(nums[1]))],
                        "hundredand",
                        if(nums[3] > 0) {
                            names(teens)[which(teens==(nums[2]*10+nums[3]))]
                        } else {
                            "ten"
                        }
                      )
                    )
            }
        } else {
            return("onethousand")
        }
    } else {
        if(length(nums) == 1) {
            return(names(one_digits)[which(one_digits==nums[1])])
        } else {
            if(nums[1] == 1) {
                if(nums[2] > 0){
                    return(names(teens)[which(teens==(nums[1]*10+nums[2]))])
                } else {
                    return("ten")
                }
            } else {
                return(
                  paste0(
                    names(ten_digits)[which(ten_digits==(nums[1]*10))],
                    names(one_digits)[which(one_digits==nums[2])]
                  )
                )
            }
        }
    }

    return(word)
}

word_nums <- unlist(sapply(1:1000, word2num))
letter_count <- c()
for(i in 1:1000){
    split_word <- unlist(strsplit(as.character(word_nums[i]), split=""))
    letter_count <- c(letter_count, length(split_word))
}

sum(letter_count)
