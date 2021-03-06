% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prg.R
\name{create_prg_curve}
\alias{create_prg_curve}
\title{Precision-Recall-Gain curve}
\usage{
create_prg_curve(labels, pos_scores, neg_scores = -pos_scores)
}
\arguments{
\item{labels}{a vector of labels, where 1 marks positives and 0 or -1 marks
negatives}

\item{pos_scores}{vector of scores for the positive class, where a higher
score indicates a higher probability to be a positive}

\item{neg_scores}{vector of scores for the negative class, where a higher
score indicates a higher probability to be a negative (by default, equal to
-pos_scores)}
}
\value{
A data.frame which lists the points on the PRG curve with the
  following columns: pos_score, neg_score, TP, FP, FN, TN, precision_gain,
  recall_gain, is_crossing and in_unit_square. All the points are listed in
  the order of increasing thresholds on the score to be positive (the ties
  are broken by decreasing thresholds on the score to be negative).
}
\description{
This function creates the Precision-Recall-Gain curve from the vector of
labels and vector of scores where higher score indicates a higher probability
to be positive. More information on Precision-Recall-Gain curves and how to
cite this work is available at http://www.cs.bris.ac.uk/~flach/PRGcurves/.
}
\details{
The PRG-curve is built by considering all possible score thresholds,
  starting from -Inf and then using all scores that are present in the given
  data. The results are presented as a data.frame which includes the
  following columns: pos_score, neg_score, TP, FP, FN, TN, precision_gain,
  recall_gain, is_crossing and in_unit_square. The resulting points include
  the points where the PRG curve crosses the y-axis and the positive half of
  the x-axis. The added points have is_crossing=1 whereas the actual PRG
  points have is_crossing=0. To help in visualisation and calculation of the
  area under the curve the value in_unit_square=1 marks that the point is
  within the unit square [0,1]x[0,1], and otherwise, in_unit_square=0.
}
