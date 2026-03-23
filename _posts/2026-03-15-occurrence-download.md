---
layout: post
title: "The Most Common Title on OpenAlex: `Occurrence Download`"
categories: dev
---


```
In []: df.filter(df.title == "Occurrence Download").count()
Out[]: 4086738
```

A large collection of works titled "Occurrence Download" with "GBIF.Org User" as the author has been included in the OpenAlex `works` dataset. Furthermore, it has one of the highest row byte size, which adds significant bloat to the OpenAlex dataset.

[Link to OpenAlex for `Occurrence Download`](https://openalex.org/works?search.title_and_abstract=occurrence+download&sort=relevance_score:desc
)


As a context, here are some top aggregates:

*30 most common titles on OpenAlex*

```
In []: df.groupby(df.title).count().orderBy("count", ascending=False).head(30)
Out[]:
[Row(title='', count=6143419),
 Row(title='Occurrence Download', count=4086738),
 Row(title=None, count=1807859),
 Row(title='archive.org Member', count=816219),
 Row(title='Introduction', count=471973),
 Row(title='Editorial Board', count=346797),
 Row(title='Streptomyces sp.', count=299585),
 Row(title='Index', count=271602),
 Row(title='Editorial', count=259510),
 Row(title='Animalia', count=257135),
 Row(title='Front Matter', count=245362),
 Row(title='Frontmatter', count=204817),
 Row(title='Preface', count=201099),
 Row(title='Table of Contents', count=200554),
 Row(title='Contents', count=190204),
 Row(title='Lepidoptera Linnaeus, 1758', count=184780),
 Row(title='NBC News Scripts', count=127397),
 Row(title='Book Reviews', count=119856),
 Row(title='Conclusion', count=115246),
 Row(title='Bibliography', count=105941),
 Row(title='Notes', count=105511),
 Row(title='Masthead', count=98460),
 Row(title='Issue Information', count=98285),
 Row(title='Back Matter', count=89172),
 Row(title='Acknowledgments', count=86912),
 Row(title='The APPLAUSE Data Release 2', count=85231),
 Row(title='Erratum', count=76345),
 Row(title='Contributors', count=73847),
 Row(title='Foreword', count=73563),
 Row(title='References', count=66750)]
```

*100 works by row byte size*

> Note: Only the relevant columns (title, authorship, description, etc) are included.

| id                               | size     | title                                                                                                                                                                                                                                              | type         |
|:---------------------------------|:---------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------|
| https://openalex.org/W6929943625 | 14.06 KB | Prochiloneurus lucetia Noyes 2023, sp.nov.                                                                                                                                                                                                         | article      |
| https://openalex.org/W6912743308 | 13.99 KB | Dicranopalpus catariegensis Wijnhoven & Martens & Prieto 2022, sp. nov.                                                                                                                                                                            | article      |
| https://openalex.org/W4387339134 | 13.02 KB | Air and hydrogen injection tests on saturated compacted bentonite                                                                                                                                                                                  | article      |
| https://openalex.org/W6948817700 | 14.51 KB | Ackermann pdf                                                                                                                                                                                                                                      | other        |
| https://openalex.org/W4310159470 | 13.98 KB | Characterization and T-Cell Repertoire of MB-CART2019.1 (Zamtocabtagene autoleucel) - Data from the Phase I Trial in Patients with Relapsed or Refractory B-Cell Non-Hodgkin Lymphoma                                                              | article      |
| https://openalex.org/W4308317492 | 13.16 KB | A novel multi-scale 2D CNN with weighted focal loss for arrhythmias detection on varying-dimensional ECGs                                                                                                                                          | article      |
| https://openalex.org/W7040610856 | 13.34 KB | vol33no4 111                                                                                                                                                                                                                                       | other        |
| https://openalex.org/W4389248173 | 13.48 KB | Ilyad: A Phase III Double Blind, Randomized Trial Evaluating Vitamin D (Cholecalciferol) in Patients with Low Tumor-Burden Indolent Non-Hodgkin Lymphoma Treated with Rituximab Therapy                                                            | article      |
| https://openalex.org/W4323363071 | 13.49 KB | Rapid escape of new SARS-CoV-2 Omicron variants from BA.2-directed antibody responses                                                                                                                                                              | article      |
| https://openalex.org/W7034619350 | 13.42 KB | Un nou paradigma de formació professional i professionalitzadora                                                                                                                                                                                   | article      |
| https://openalex.org/W7036241104 | 13.37 KB | +91-9116799099 black magic specialist astrologer in mumbai                                                                                                                                                                                         | other        |
| https://openalex.org/W7012526362 | 14.58 KB | vol19no2 91                                                                                                                                                                                                                                        | other        |
| https://openalex.org/W6898759648 | 13.59 KB | crosstalk.min.css                                                                                                                                                                                                                                  | dataset      |
| https://openalex.org/W7080695530 | 13.51 KB | ¿Cuidar por amor?: una aproximación al trabajo de cuidados y a sus consecuencias en mujeres cuidadoras, a partir de los conceptos de amor y violencia de género, y de apoyo social y salud                                                         | dissertation |
| https://openalex.org/W6892682899 | 13.03 KB | Mietvertrag pdf vorlage                                                                                                                                                                                                                            | other        |
| https://openalex.org/W4403508472 | 14.38 KB | Access barriers to anti-CD19+ CART therapy for NHL across a community transplant and cellular therapy network                                                                                                                                      | article      |
| https://openalex.org/W4406152282 | 13.44 KB | Population sequencing of cherry accessions unravels the evolution of Cerasus species and the selection of genetic characteristics in edible cherries                                                                                               | article      |
| https://openalex.org/W6973470076 | 13.65 KB | 002_IFNL_Recovery_scRNAseq_20230601_10X_RNAseq_WT_excluded_cells_pctRibo.txt                                                                                                                                                                       | dataset      |
| https://openalex.org/W6995968140 | 13.07 KB | Protitumorsko delovanje genskega elektroprenosa kombinacije plazmidov z zapisom za interlevkina IL-2 in IL-12 na različnih mišjih tumorskih modelih                                                                                                | dissertation |
| https://openalex.org/W4225759884 | 14.23 KB | Urban planning – architectural report on thermal stress in the city of Warsaw                                                                                                                                                                      | report       |
| https://openalex.org/W6930644172 | 13.58 KB | Dioscorea flabellispina R. Couto & J. M. A. Braga 2015, sp. nov.                                                                                                                                                                                   | article      |
| https://openalex.org/W4205221276 | 13.51 KB | Superficial Therapy                                                                                                                                                                                                                                | book-chapter |
| https://openalex.org/W7118711906 | 14.15 KB | Euderces reichei LeConte 1873                                                                                                                                                                                                                      | article      |
| https://openalex.org/W6912937968 | 13.38 KB | Conlan vs Guerfi Live streaming online free ON -FITE, ESPN+ – Dec. 10 – 1 pm ET                                                                                                                                                                    | other        |
| https://openalex.org/W4385264758 | 13.47 KB | Comparative Effectiveness of Long‐Term Maintenance Beta‐Blocker Therapy After Acute Myocardial Infarction in Stable, Optimally Treated Patients Undergoing Percutaneous Coronary Intervention                                                      | article      |
| https://openalex.org/W4413050474 | 13.65 KB | Correction: CPT1A-mediated fatty acid oxidation promotes colorectal cancer cell metastasis by inhibiting anoikis                                                                                                                                   | erratum      |
| https://openalex.org/W7115911156 | 14.52 KB | مکاتب فلسفی باستانی و معاصر و تحلیل ریاضیاتی-فیزیکی آنها با تانسور ۱۶۵ بعدی معادله حمزه                                                                                                                                                            | article      |
| https://openalex.org/W6961851598 | 14.8 KB  | Occurrence Download                                                                                                                                                                                                                                | dataset      |
| https://openalex.org/W7028013212 | 14.17 KB | Disconnected: Investigating the Social and Political Conditions Shaping Mexico Cityâs Air Quality Regulatory Environment                                                                                                                           | dissertation |
| https://openalex.org/W7036633864 | 14.63 KB | Casa Huarte: José Antonio Corrales y Ramón Vázquez Molezún. El concepto de lo experimental en el ámbito doméstico                                                                                                                                  | other        |
| https://openalex.org/W6930509074 | 14.66 KB | The Anatomy of Superintelligence: How To Create ASI Lifeform System The Instructions Manuel (Nexus of Cognition: A Technical Codex Blueprint For Engineering, Crafting, Self-Propagating, and Self-Evolving Superintelligence)                     | book         |
| https://openalex.org/W6931279648 | 13.03 KB | Thaumastocoris safordi Noack, Cassis & Rose, n.sp.                                                                                                                                                                                                 | article      |
| https://openalex.org/W7065056515 | 13.37 KB | delhi vashikaran specialist services +91-9116799099                                                                                                                                                                                                | other        |
| https://openalex.org/W4366463645 | 13.78 KB | Epigenetic Control of Translation Checkpoint and Tumor Progression via RUVBL1‐EEF1A1 Axis                                                                                                                                                          | article      |
| https://openalex.org/W4402335530 | 14.73 KB | T cell correction pipeline for Inborn Errors of Immunity                                                                                                                                                                                           | preprint     |
| https://openalex.org/W6911649937 | 13.41 KB | Tabata workout tabata übungen pdf                                                                                                                                                                                                                  | other        |
| https://openalex.org/W4404309783 | 14.2 KB  | Data for EMSL Project 60045 from September 2023                                                                                                                                                                                                    | article      |
| https://openalex.org/W7130832543 | 13.96 KB | Global Dynamics : Contrôle, Flux et Divergence Planétaire                                                                                                                                                                                          | other        |
| https://openalex.org/W7040693920 | 13.5 KB  | 2                                                                                                                                                                                                                                                  | other        |
| https://openalex.org/W4409383793 | 13.58 KB | The RMaP challenge of predicting RNA modifications by nanopore sequencing                                                                                                                                                                          | article      |
| https://openalex.org/W4287120992 | 14.82 KB | Powerful dua for lost love +918696805715                                                                                                                                                                                                           | article      |
| https://openalex.org/W4242548701 | 13.03 KB | nan                                                                                                                                                                                                                                                | article      |
| https://openalex.org/W4405219434 | 13.67 KB | The Frequency and Incidence of QT Prolongation With Extended Use of Bedaquiline or Delamanid in a Large, Multi-Country Multidrug-Resistant/Rifampicin-Resistant Tuberculosis Cohort                                                                | article      |
| https://openalex.org/W4396579258 | 14.65 KB | IT-Related Barriers and Facilitators to the Implementation of a New European eHealth Solution, the Digital Survivorship Passport (SurPass Version 2.0): Semistructured Digital Survey                                                              | article      |
| https://openalex.org/W4409169081 | 14.2 KB  | Editorial: Treatment of brain metastases from non-small cell lung cancer: preclinical, clinical, and translational research                                                                                                                        | editorial    |
| https://openalex.org/W7019600339 | 14.51 KB | Grain Boundary Passivation of Multicrystalline Silicon Using Hydrogen Sulfide as a Sulfur Source                                                                                                                                                   | dissertation |
| https://openalex.org/W4387019576 | 14.8 KB  | Genome-wide enhancer-gene regulatory maps link causal variants to target genes underlying human cancer risk                                                                                                                                        | article      |
| https://openalex.org/W6950240078 | 14.01 KB | Grzegorzekia kerri Fitzgerald 2019, n. sp.                                                                                                                                                                                                         | article      |
| https://openalex.org/W6931786938 | 13.77 KB | Dental Enumeration and Diagnosis on Panoramic X-rays Challenge                                                                                                                                                                                     | other        |
| https://openalex.org/W7067043463 | 13.75 KB | Környezettudatosság és a támogatások szerepe az ökológiai gazdálkodást folytató egyéni gazdaságokban                                                                                                                                               | other        |
| https://openalex.org/W6939304370 | 14.37 KB | Unpublished Mediterranean and Black Sea records of marine alien, cryptogenic, and neonative species                                                                                                                                                | article      |
| https://openalex.org/W4361277700 | 13.87 KB | Tricuspid Regurgitation in Elderly Patients with Acute Heart Failure: Insights from the KCHF Registry                                                                                                                                              | article      |
| https://openalex.org/W6950347820 | 14.13 KB | Drepanaporus antillarum Waichert & Rodriguez & Von Dohlen & Pitts 2012, comb. nov.                                                                                                                                                                 | article      |
| https://openalex.org/W4287125103 | 14.28 KB | Prayer for love to come back +918696805715                                                                                                                                                                                                         | article      |
| https://openalex.org/W4394812780 | 14.48 KB | Human skeletal muscle aging atlas                                                                                                                                                                                                                  | article      |
| https://openalex.org/W6949045727 | 13.95 KB | Metaphern liste pdf                                                                                                                                                                                                                                | other        |
| https://openalex.org/W6911352952 | 13.32 KB | Anxious people pdf                                                                                                                                                                                                                                 | other        |
| https://openalex.org/W6969088725 | 13.54 KB | watch! demon slayer mugen train (2020) | full movies online `free                                                                                                                                                                                  | article      |
| https://openalex.org/W4385514810 | 13.07 KB | Volatile Organic Compounds Emitted by the Biocontrol Agent Pythium oligandrum Contribute to Ginger Plant Growth and Disease Resistance                                                                                                             | article      |
| https://openalex.org/W7048373832 | 13.76 KB | jual obat cytotec pontianak 0822-6164-1233 obat aborsi cytotec pontianak                                                                                                                                                                           | other        |
| https://openalex.org/W4395358302 | 13.5 KB  | Occurrence Download                                                                                                                                                                                                                                | dataset      |
| https://openalex.org/W6967962944 | 13.58 KB | Madeira wanderkarte pdf                                                                                                                                                                                                                            | other        |
| https://openalex.org/W7037446107 | 13.81 KB | Estudio de la relación entre la dificultad quirúrgica en la exodoncia del tercer molar y las variables clínicas y séricas.                                                                                                                         | dissertation |
| https://openalex.org/W6949805951 | 14.64 KB | Drusilla italica V. I. Gusarov                                                                                                                                                                                                                     | article      |
| https://openalex.org/W7005090577 | 14.11 KB | Prefatory Matter and Table of Contents                                                                                                                                                                                                             | article      |
| https://openalex.org/W6969062358 | 14.36 KB | Atanatolica bonita Costa & Calor, 2014, new species                                                                                                                                                                                                | article      |
| https://openalex.org/W6920165680 | 13.11 KB | Elimination of lymphatic filariasis as a public health problem in Malawi                                                                                                                                                                           | article      |
| https://openalex.org/W4392916898 | 13.07 KB | Etiologija subjektivne dobrobiti u prostoru modela ličnosti HEXACO                                                                                                                                                                                 | dissertation |
| https://openalex.org/W6892885163 | 13.39 KB | Der verrat am selbst pdf                                                                                                                                                                                                                           | other        |
| https://openalex.org/W6958684128 | 14.86 KB | ???????? LOST LOVE SPELLS CASTER ((+27640243780)) IN SPRINGBOK,NIGEL,PHUTHADITJHABA ,NOORDGESIG,MAPONYA (PIMVILLE),ETWATWA,BEDFORD,VANDERBIJLPARK,KEMPTON PARK                                                                                     | dataset      |
| https://openalex.org/W7120705765 | 13.56 KB | A Reinvenção do Rural no Rio de Janeiro: A Experiência do Café na Roça no Bairro Campo Grande / Rural's Reinvention in Rio de Janeiro: Café na Roça Experience in Campo Grande Neighborhood                                                        | other        |
| https://openalex.org/W6950155751 | 13.46 KB | Procollina stigmosa Sanborn 2018, n. sp.                                                                                                                                                                                                           | article      |
| https://openalex.org/W4407308766 | 13.41 KB | Revolutionizing Academic Medical Writing: The Role of AI                                                                                                                                                                                           | article      |
| https://openalex.org/W6930046673 | 13.36 KB | Tajine pdf                                                                                                                                                                                                                                         | other        |
| https://openalex.org/W6907560195 | 13.96 KB | Determination of Applied Water and Water Productivity in Barley Production in Iran                                                                                                                                                                 | article      |
| https://openalex.org/W6950053553 | 14.57 KB | Pseudochromis erdmanni Gill & Allen, 2011, new species                                                                                                                                                                                             | article      |
| https://openalex.org/W4200229298 | 13.3 KB  | Robotic NICE Procedure With Natural Orifice-Assisted Small-Bowel Resection and Anastomosis for Complicated Diverticulitis with Enterocolic Fistula                                                                                                 | article      |
| https://openalex.org/W4385405849 | 13.32 KB | Identifying an optimal fludarabine exposure for improved outcomes after axi-cel therapy for aggressive B-cell non-Hodgkin lymphoma                                                                                                                 | article      |
| https://openalex.org/W7106853289 | 14.2 KB  | Gammarus latispinus Piscart, Mabrouki & Taybi, 2025, sp. nov.                                          
