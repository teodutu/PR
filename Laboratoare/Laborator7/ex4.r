TP1 = 0.97
FN1 = 0.03
FP1 = 0.04
TN1 = 0.96
TP2 = 0.96
FN2 = 0.04
FP2 = 0.02
TN2 = 0.98
probBad = 0.01


print("Probability of a TruePos-FalseNeg combination:")



print("Probability of a legit packet being considered a virus:")
legitVirusPos = probBad * (TP1 * TP2 + TP1 * FN2 + TP2 * FN1)
falseVirusPos = (1 - probBad) * (FP1 * FP2 + FP1 * TN2 + FP2 * TN1)
legitVirusPos / (legitVirusPos + falseVirusPos)
