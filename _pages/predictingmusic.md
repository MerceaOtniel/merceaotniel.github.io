---
layout: single
permalink: /predictingmusic/
author_profile: true

---

**"Predicting Music Success through Audio, Lyrics and Metadata"**

Abstract

"In this work, we present a novel deep learning approach to tackle the Hit Song Science (HSS) problem, i.e. predict the success of music ahead of publication. In particular, ours is the first deep learning approach that exploits a track’s 1) audio, 2) lyrics and 3) high-level features, and employs the cutting edge of natural language processing and computer vision. For each track, we extract sentiment and meaning embeddings from lyrics, as well as features from audio and combine these with high-level features into a neural network architecture. Compared to all previous approaches, the predictions we provide offer higher granularity which makes our technique potentially the best thus far. Additionally, we performed a detailed ablation study that allows for insights in the contribution of each of the three components, as well as their interaction, towards predicting popularity of tracks. To make our approach possible, we built the first large-scale dataset of music tracks, complete with lyrics, audio previews and high-level features. We propose our dataset as testbed for the research community to develop new Hit Song Science approaches, as well as evaluate and compare solutions in a domain that is no longer restricted to audio, lyrics or high-level features exclusively."

The qualities of our dataset are only matched by concurrent work "A multimodal end- to-end deep learning architecture for music popularity prediction", which presents multiple similarities with ours. Although their work was published midway the development of ours, we built the dataset using their very same sources (Spotify: audio, features; Genius: lyrics). In fact, somewhat surprisingly, our work presents approaches in line with the suggestions in their ‘Future Work’ section, which we defined prior to their publication. This confirms the research gap we identified was indeed relevant to the current state of exploration in the field.

**Technologies: Python, PyTorch, Spotify API, Genius API**

