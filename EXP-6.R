sieve_of_eratosthenes <- function(limit) {
  prime <- rep(TRUE, limit)
  prime[1] <- FALSE
  for (p in 2:sqrt(limit)) {
    if (prime[p]) {
      for (i in p * p:limit) {
        prime[i] <- FALSE
      }
    }
  }

  primes <- which(prime)
  return(primes)
}

limit <- as.integer(readline("Enter a number to find all prime numbers up to: "))

prime_numbers <- sieve_of_eratosthenes(limit)

cat("Prime numbers up to", limit, "are:", prime_numbers, "\n")
