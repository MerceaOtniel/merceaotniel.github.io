---
layout: single
permalink: /hybridalpha/
author_profile: true

---

One goal of Artificial Intelligence is to create general self-learning algorithms that think similarly to humans and this is done by solving complex logic games because these games reveal many characteristics about human intelligence. One outdated technique to create intelligent agents was to handcraft a heuristic function to evaluate the state of the game. However, this technique proved to be ineffective on complex games. Another approach was to use search algorithms, like Alpha-Beta, which combines an heuristic function with a search tree in order to compensate for the poor performance of using only the heuristic function. Deep Blue used such a technique and it managed to beat Garry Kasparov, however this program was designed for Chess and wasn't able to play other games. One of the recent achievements of DeepMind was the creation of AlphaZero which learns to play any perfect information two player game by starting tabula rasa, knowing only the rules of the game, and it is trained only on data generated through self-play. AlphaZero faced the strongest programs in Chess, Shogi and Go and it won easily. Thus, a general learning algorithm, which achieved superhuman performance, was created. This thesis has the goal of creating HybridAlpha, an algorithm that combines ideas from AlphaZero and AlphaGo Zero in order to play many games, among them being Othello, Gomoku, TicTacToe and Connect4. Like AlphaZero, HybridAlpha knows only the rules of the game. However, HybridAlpha was specifically designed to be trained and run on resource-constrained systems. HybridAlpha faced Greedy, Random and Alpha-Beta agents and a sequential implementation of AlphaZero and it managed to beat them. Thus, it is revealed that the combination of ideas led to a new algorithm which is capable of beating different heuristics and especially AlphaZero on a resource-constrained system by being more data efficient than AlphaZero. Technologies: Python, TensorFlow, NumPy, Matplotlib




