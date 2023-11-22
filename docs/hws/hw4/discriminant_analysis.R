

Comp_priors <- function(train_labels, K) {
  #' Compute the priors of each class label 
  #' 
  #' @param train_labels a vector of labels with length equal to n
  #' @param K the number of classes in the response
  #' 
  #' @return a probability vector of length K
  
  pi_vec <- rep(0, K)
  
  #####################################################################
  #  TODO                                                             #
  #####################################################################
  
  
  #####################################################################
  #                       END OF YOUR CODE                            #
  #####################################################################
  
  return(pi_vec)
}
  


Comp_cond_means <- function(train_data, train_labels, K) {
  #' Compute the conditional means of each class 
  #' 
  #' @param train_data a n by p matrix containing p features of n training points
  #' @param train_labels a vector of labels with length equal to n
  #' @param K the number of levels in the response
  #' 
  #' @return a p by K matrix, each column represents the conditional mean given
  #'   each class.
  
  p <- ncol(train_data)
  mean_mat <- matrix(0, p, K)
  
  #####################################################################
  #  TODO                                                             #
  #####################################################################
  
  
  #####################################################################
  #                       END OF YOUR CODE                            #
  #####################################################################
  
  return(mean_mat)
}



Comp_cond_covs <- function(train_data, train_labels, K, method = "LDA") {
  #' Compute the conditional covariance matrix of each class
  #' 
  #' @param train_data a n by p matrix containing p features of n training points
  #' @param train_labels a vector of labels with length equal to n
  #' @param K the number of levels in the response
  #' @param method one of the methods in "LDA", "QDA" and "NB"
  #' 
  #' @return 
  #'  if \code{method} is "QDA", return an array with dimension (p, p, K),
  #'    containing p by p covariance matrices of each class;
  #'  else if \code{method} is "NB", return a p by K matrix containing the 
  #'    diagonal covariance entries of each class; 
  #'  else return a p by p covariance matrix.
  
  p <- ncol(train_data)
  
  
  #####################################################################
  #  TODO                                                             #
  #####################################################################
  
  cov_arr <- NA
  
  return(cov_arr)
  
  #####################################################################
  #                       END OF YOUR CODE                            #
  #####################################################################
}




Predict_posterior <- function(test_data, priors, means, covs, method = "LDA") {
  
  #' Predict the posterior probabilities of each class 
  #'
  #' @param test_data a n_test by p feature matrix 
  #' @param priors a vector of prior probabilities with length equal to K
  #' @param means a p by K matrix containing conditional means given each class
  #' @param covs covariance matrices of each class, depending on \code{method}
  #' @param method one of the methods in "LDA", "QDA" and "NB"
  #'   
  #' @return a n_test by K matrix: each row contains the posterior probabilities 
  #'   of each class.
  
  n_test <- nrow(test_data)
  K <- length(priors)
  
  posteriors <- matrix(0, n_test, K) 
  
  #####################################################################
  #  TODO                                                             #
  #####################################################################
  
  
  #####################################################################
  #                       END OF YOUR CODE                            #
  #####################################################################
  
  return(posteriors)
}


Predict_labels <- function(posteriors) {
  
  #' Predict labels based on the posterior probabilities over K classes
  #' 
  #' @param posteriors A n by K posterior probabilities
  #' 
  #' @return A vector of predicted labels with length equal to n
  
  n_test <- nrow(posteriors)
  pred_labels <- rep(NA, n_test)
  
  #####################################################################
  #  TODO                                                             #
  #####################################################################
  
  
  #####################################################################
  #                       END OF YOUR CODE                            #
  #####################################################################
  
  return(pred_labels)
}




