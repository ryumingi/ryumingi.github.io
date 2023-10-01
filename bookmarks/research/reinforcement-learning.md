<details>
  <summary>
    <a href='https://huggingface.co/blog/rlhf'>Illustrating Reinforcement Learning from Human Feedback (RLHF)</a>
  </summary>

  <p>There are multiple methods for ranking the text. One method that has been successful is to have users compare generated text from two language models conditioned on the same prompt. By comparing model outputs in head-to-head matchups, an Elo system can be used to generate a ranking of the models and outputs relative to each-other. These different methods of ranking are normalized into a scalar reward signal for training.</p>
</details>


<details>
  <summary>
    <a href='https://webdocs.cs.ualberta.ca/~nathanst/papers/chen2021general.pdf'>Necessary and Sufficient Conditions for Avoiding Reopenings in Best First Suboptimal Search with General Bounding Functions</a>
  </summary>
</details>

<details>
  <summary>
    <a href='https://www.cs.unh.edu/~ruml/papers/wted-astar-socs-12.pdf'>When does Weighted A* Fail?</a>
  </summary>

  <p>
  For example, the Fast Downward planner (Helmert
  2006) uses Weighted A*, and LAMA (Richter and Westphal
  2010) also uses a variant of Weighted A*. 
  </p>

  <p>
    We first showed that greedy search can sometimes perform
  worse than A*, and that although in many domains there is a
  general trend where a larger weight in Weighted A* leads to
  a faster search, there are also domains where a larger weight
  leads to a slower search. It has long been understood that
  greedy search has no bounds on performance, but our work
  shows that poor behavior can occur in practice.
  </p>
</details>

<details>
  <summary>
    <a href='https://www.ics.uci.edu/~dechter/courses/ics-295/winter-2018/papers/nature-go.pdf'>Mastering the game of Go without human knowledge</a>
  </summary>
</details>

<details>
  <summary>
    <a href='http://courses.csail.mit.edu/6.803/pdf/2016%20go.pdf'>Mastering the game of Go with deep neural networks and tree search</a>
  </summary>
</details>

<details>
  <summary>
    <a href='https://bi.snu.ac.kr/Courses/4ai10f/Papers/Campbell%202002%20-%20Deep%20blue.pdf'>Deep Blue</a>
  </summary>

  <p>
    The extended book [6] in Deep Blue is a mechanism that allows a large Grandmaster
  game database to influence and direct Deep Blue’s play in the absence of opening book
  information. The basic idea is to summarize the information available at each position of
  a 700,000 game database, and use the summary information to nudge Deep Blue in the
  consensus direction of chess opening theory.
  </p>

  <p>
    The specific mechanism used in Deep Blue was to assign bonuses (or penalties) to those
  moves in a given position that had been played in the Grandmaster game database. For
  example, suppose that in the opening position of a chess game the move d4 is given a 10
  point bonus. Deep Blue would carry out its regular search, but offset the alpha-beta search
  window for d4 by 10 points. Thus d4 would be preferred if it was no more than than 10
  points worse the best of the other moves.
  </p>

</details>

<details>
  <summary>
    <a href='https://courses.csail.mit.edu/6.803/pdf/steps.pdf'>Steps Toward Artificial Intelligence</a>
  </summary>

  <p>
    The problemii of extinictioni or "unilearniing" is especiallv critical for complex, hierarchical, leariniig.
  </p>
</details>


<details>
  <summary>
    <a href='https://arxiv.org/pdf/2304.11477.pdf'>LLM+P: Empowering Large Language Models with Optimal Planning Proficiency</a>
  </summary>

  <p>LLM+P takes in a
  natural language description of a planning problem, then returns a correct (or optimal) plan for solving that problem in natural language. LLM+P does so by
  first converting the language description into a file written in the planning domain definition language (PDDL), then leveraging classical planners to quickly
  find a solution, and then translating the found solution back into natural language.</p>

  <p>Without the context (i.e., an example problem and its corresponding problem PDDL), we
  observe that LLMs fail to produce correct problem PDDL files. The failures of LLM+P
  (no context) come entirely from incorrect problem encodings. Therefore, the context is
  important for LLM+P to work.</p>
</details>
