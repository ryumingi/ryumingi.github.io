https://ai.stanford.edu/courses/

https://simons.berkeley.edu/talks/christopher-d-manning-stanford-university-2023-08-14

https://mlsys.stanford.edu

https://huggingface.co/blog/rlhf

There are multiple methods for ranking the text. One method that has been successful is to have users compare generated text from two language models conditioned on the same prompt.

By comparing model outputs in head-to-head matchups, an Elo system can be used to generate a ranking of the models and outputs relative to each-other. These different methods of ranking are normalized into a scalar reward signal for training.

An intuition would be that these preference models need to have similar capacity to understand the text given to them as a model would need in order to generate said text.

Let's first formulate this fine-tuning task as a RL problem. First, the policy is a language model that takes in a prompt and returns a sequence of text (or just probability distributions over text). The action space of this policy is all the tokens corresponding to the vocabulary of the language model (often on the order of 50k tokens) and the observation space is the distribution of possible input token sequences, which is also quite large given previous uses of RL (the dimension is approximately the size of vocabulary ^ length of the input token sequence). The reward function is a combination of the preference model and a constraint on policy shift.
