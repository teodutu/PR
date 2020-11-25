album_1 = data.frame(autor = c("Jean de la Craiova", "George de la Stefanesti",
    "Mihaita Piticul", "Nicolae Guta", "Adrian Minune", "Stefan de la Barbulesti",
    "Neluta Neagu", "Sorinel Pustiul", "Mihaita Piticul", "Stefan de la Barbulesti",
    "Neluta Neagu", "Adrian Minune"), melodie = c("Tu esti femeia care-mi place",
    "Iti dau partea mea de fericire", "Ce inima de gheata", "Ce le-as face la dusmani",
    "Si cand vad patul gol", "Ma rog la tine", "De-ar putea dusmani",
    "Danseaza cu mine macar cinci minute", "Acum imi ceri sa fim amici",
    "Inima mea plange", "Sunt un barbat luxos", "Cat te-ai schimbat"))
album_2 = data.frame(autor = c("Alberto voce de diamant", "Florin Salam",
    "Copilul de Aur", "Danezu", "Denisa", "Sorina", "Liviu Pustiu",
    "Octavian Francezul", "Vali Vijelie", "Adrian Minune", "Sorinel Pustiu",
    "Nicolae Guta"), melodie = c("Nu mai pot", "Eu sunt bomba nucleara",
    "Daca ramai in viata mea", "Arunc miliarde", "Inima mea",
    "Nu mai pot sa ma indragostesc", "Am scoala de mafiot", "Cunosc omul dupa fata",
    "Taicutul meu", "Nevasta mea", "Ce dimineata trista", "cum te misti, asa vorbesti"))

binomProb <- function(p, s, n) {
    choose(n, s) * p^s * (1 - p)^(n - s)
}


print("The probability of listening to either LEGEND 5 times out of 50:")
pWonder = (
	sum(album_1$autor == "Adrian Minune") / length(album_1$autor)
	+ sum(album_2$autor == "Adrian Minune") / length(album_2$autor)
) / 2
pStorm = (
	sum(album_1$autor == "Vali Vijelie") / length(album_1$autor)
	+ sum(album_2$autor == "Vali Vijelie") / length(album_2$autor)
) / 2

pBoth = pStorm + pWonder
binomProb(pBoth, 5, 50)


numHitsWonderDwarf = (
	sum(album_1$autor == "Adrian Minune")
	+ sum(album_2$autor == "Adrian Minune")
	+ sum(album_1$autor == "Mihaita Piticul")
	+ sum(album_2$autor == "Mihaita Piticul")
)
print("Number of hits authored by either of the two titans:")
print(numHitsWonderDwarf)

numHitsAlbum1 = (
	sum(album_1$autor == "Adrian Minune")
	+ sum(album_1$autor == "Mihaita Piticul")
)
print("Number of hits on the first masterpiece:")
print(numHitsAlbum1)

print("Probability of either titan being featured on the first masterpiece:")
numHitsAlbum1 / numHitsWonderDwarf
