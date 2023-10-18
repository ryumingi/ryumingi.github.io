
<details>
  <summary>
    <a href='https://lightning.ai/pages/community/tutorial/lora-llm/'>Parameter-Efficient LLM Finetuning With Low-Rank Adaptation (LoRA)</a>
  </summary>

  <p>finetuning a relatively large model such as LLaMA can be done in a few hours on a single GPU using LoRA</p>
</details>


<details>
  <summary>
    <a href=''>Automation of Summary Evaluation by the Pyramid Method</a>
  </summary>

  <p>There are O(n^2) + possible
  such sets for sentences of words; to avoid exponen-
  tial runtime, we use a two-dimensional dynamic pro-
  graming algorithm, which selects the best contributor
  set for each span of words between the ith and jth
  words of a sentence, eventually producing a preferred
  covering for the entire sentence.</p>
  
  <p>The difference
  in correlation between the automatic Pyramid and the
  ROUGE scores is statistically significant (p 0.05)
  for all cases except the Pearson correlation between
  the automatic Pyramid (0.942) and ROUGE-1 recall
  score (0.805), which is not statistically significant (p
  = 0.129). We expect that more data will allow us to es-
  tablish statistical significance for the remaining com-
  parison as well.</p>

  <p>Note that for ROUGE, as for our automatic evalu-
  ation, unigrams performs best, followed by the skip
  bigrams/unigrams combination, followed by the bi-
  grams. The differences among the ROUGE scores are
  considerable.</p>
  
</details>


<details>
  <summary>
    <a href=''>Evaluation of Text Generation: A Survey</a>
  </summary>

  <p>The Bilingual Evaluation Understudy (bleu) is one of the first metrics used to
measure the similarity between two sentences (Papineni et al., 2002). Originally proposed
for machine translation, it compares a candidate translation of text to one or more reference
translations. bleu is a weighted geometric mean of n-gram precision scores.</p>
  
  <p>Caccia et al. (2018) found that generated text with perfect bleu
scores was often grammatically correct but lacked semantic or global coherence, concluding
that the generated text has poor information content.</p>

  <p>In Graham (2015), it was concluded that bleu achieves strongest correlation with
human assessment, but does not significantly outperform the best-performing rouge vari-
ant. A more recent study has demonstrated that n-gram matching scores such as bleu can
be an insufficient and potentially less accurate metric for unsupervised language generation
(Semeniuta et al., 2019).</p>

<p>Recall-Oriented Understudy for Gisting Evaluation (rouge) (Lin, 2004) is a set
of metrics for evaluating automatic summarization of long texts consisting of multiple sen-
tences or paragraphs.
</p>

<p>rouge-l measures the longest matching sequence
of words using longest common sub-sequence (LCS); rouge-s (less commonly used) mea-
sures skip-bigram15 -based co-occurrence statistics; rouge-su (less commonly used) mea-
sures skip-bigram and unigram-based co-occurrence statistics.</p>

<p>Type-Token Ratio (ttr) is a measure of lexical diversity (Richards, 1987), mostly used
in linguistics to determine the richness of a writer’s or speaker’s vocabulary. It is computed
as the number of unique words (types) divided by the total number of words (tokens) in a
given segment of language.</p>

<p>The pyramid metric relies on manual human labeling effort, which makes it difficult
to automate. peak: Pyramid Evaluation via Automated Knowledge Extraction (Yang
et al., 2016) was presented as a fully automated variant of pyramid model, which can
automatically assign the pyramid weights and was shown to correlate well with human
judgments.</p>
  
</details>










