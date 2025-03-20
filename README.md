# TeX-LEAN

## Requirements

- [Lean4](https://github.com/leanprover/lean4)
- Git

## Installation

- Use one of these to use **Lean 4**.
  - [Lean 4 Web](https://live.lean-lang.org/) requires no installation and can be used in web directly.
  - Or [install Lean 4](https://docs.lean-lang.org/lean4/doc/quickstart.html) locally.
    - You will also need to install visual studio code to edit Lean 4 source.
- Use **Git** to commit your Lean 4 work to this repository.
  - [Github Desktop](https://github.com/apps/desktop) is a user-friendly program that requires no command-line interactions (Please see "README_githubDesktop.md").
  - Or install git locally and use it via command-line interactions.

## How to contribute

1. Clone this repository.
2. If using local Lean 4 installation, run `lake exe cache get` at project root to get pre-compiled mathlib4 cache.
3. Make a new branch.

    ```
    git checkout -b your_branch_name
    ```

4. Write a lean file that formalizes a statement of an exercise.
  - One directory for each chapter. The file goes into the directory `Formal/Chapter{number}`. Make one if it does not exist.
  - One .lean file for each section. Name each file as `Formal/Chapter{number}/Section{number}`.
      - e.g. `Formal/Chapter1/Section4.lean`
  - One theorem for each problem. Each problem should be a `theorem` with name `DF_{Chapter}_{Section}_{Number}`.

    ```lean
    def DF_1_4_5_IsFinite (α : Type) : Prop :=
      ∃ elems : Finset α, ∀ a : α, a ∈ elems

    /--
    Show that $GL_n(F)$ is a finite group if and only if $F$ has a
    finite number of elements.
    
    Contributor: John Doe
    -/
    theorem DF_1_4_5 {n : ℕ} {k : Type} [Field k] :
        IsFinite (Matrix.GeneralLinearGroup (Fin n) k) ↔ IsFinite k := by
      sorry
    ```
    - Write the natural language statement in LaTeX as a docstring right before the `theorem`.
      - Add a line of `Contributor: <your name>` and separate the statement and this by two newlines.
    - Any extra definitions or lemmas required for each problem can be made.
      - Such definitions/lemmas should be prefixed with `DF_{Chapter}_{Section}_{Number}_` (including extra underline).
      - Label all non-problem statement as a `lemma`.

5. Import any newly created lean file to `Formal/DF.lean`:

    ```lean
    import Formal.Chapter1.Section4.lean
    ```

    Your lean file won't be checked by CI (Continuous Integration) if you miss this part.

6. Add and commit.

    ```sh
    git add .
    git commit -m "your own commit message"
    ```

7. Push to the remote (this GitHub repository)

    ```sh
    git push --set-upstream origin your_branch_name
    ```

8. Make a Pull Request, then you'll find that CI is running (build lean and tex files).

9. After all CI pass and getting at least two approvements, one of the admins would merge your PR.

## Tips

- If it is your first time doing Lean, then it may take some time. Feel free to ask any questions at [Lean in Korea Zulip](https://lean-in-korea.zulipchat.com/). 
- Do NOT import the whole `Mathlib` in your final commit as it wll take a lot of time to compile. Instead, you could either:
  - Import the whole `Mathlib` while working, then use `#min_imports` before commiting your work to minimize the imports.
  - Search (e.g. use [documentation](https://leanprover-community.github.io/mathlib4_docs/index.html)) and import specific files needed.

## Admins

박예찬 (ychpark-ks)

백진언 (jcpaik)

이규환 (automorphy)

이시우 (seewoo5)

이철희 (chlee-0)

최일규 (Ilkyoo)

황병학 (ByungHakHwang)
