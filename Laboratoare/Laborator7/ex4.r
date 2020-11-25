TP1 = 0.97
FN1 = 0.03
FP1 = 0.04
TN1 = 0.96
TP2 = 0.96
FN2 = 0.04
FP2 = 0.02
TN2 = 0.98
probBad = 0.01


print("Probability of a FalsePos1-TrueNeg2 combination:")
(1 - probBad) * FP1 * TN2


print("Probability of a legit packet being considered a virus:")
1 - TN1 * TN2
